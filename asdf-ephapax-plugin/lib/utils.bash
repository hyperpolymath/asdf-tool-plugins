#!/usr/bin/env bash
# SPDX-License-Identifier: PMPL-1.0-or-later
# Copyright (c) 2026 Jonathan D.A. Jewell (hyperpolymath) <j.d.a.jewell@open.ac.uk>
# asdf-ephapax utility functions

set -euo pipefail

readonly GITHUB_REPO="hyperpolymath/ephapax"
readonly GITHUB_API="https://api.github.com/repos/${GITHUB_REPO}"

export TOOL_NAME="ephapax"
export TOOL_CMD="ephapax"

# Colors for output
if [[ -t 2 ]]; then
  readonly RED='\033[0;31m'
  readonly GREEN='\033[0;32m'
  readonly YELLOW='\033[0;33m'
  readonly BLUE='\033[0;34m'
  readonly NC='\033[0m'
else
  readonly RED=''
  readonly GREEN=''
  readonly YELLOW=''
  readonly BLUE=''
  readonly NC=''
fi

log_info() {
  echo -e "${BLUE}[asdf-ephapax]${NC} $*" >&2
}

log_success() {
  echo -e "${GREEN}[asdf-ephapax]${NC} $*" >&2
}

log_warn() {
  echo -e "${YELLOW}[asdf-ephapax]${NC} WARNING: $*" >&2
}

log_error() {
  echo -e "${RED}[asdf-ephapax]${NC} ERROR: $*" >&2
}

fail() {
  log_error "$*"
  exit 1
}

get_platform() {
  local os
  os="$(uname -s)"
  case "${os}" in
    Linux*)  echo "linux" ;;
    Darwin*) echo "macos" ;;
    MINGW*|MSYS*|CYGWIN*) echo "windows" ;;
    *) fail "Unsupported operating system: ${os}" ;;
  esac
}

get_arch() {
  local arch
  arch="$(uname -m)"
  case "${arch}" in
    x86_64|amd64) echo "x86_64" ;;
    aarch64|arm64) echo "aarch64" ;;
    armv7*) echo "armv7a" ;;
    i686|i386) echo "x86" ;;
    *) fail "Unsupported architecture: ${arch}" ;;
  esac
}

curl_wrapper() {
  local -a curl_args=("-fsSL" "--retry" "3" "--retry-delay" "2")

  # Use GITHUB_TOKEN if available for higher rate limits
  if [[ -n "${GITHUB_TOKEN:-}" ]] || [[ -n "${GITHUB_API_TOKEN:-}" ]]; then
    local token="${GITHUB_TOKEN:-${GITHUB_API_TOKEN}}"
    curl_args+=("-H" "Authorization: token ${token}")
  fi

  curl "${curl_args[@]}" "$@"
}

download_file() {
  local url="$1"
  local output="$2"

  log_info "Downloading ${url}..."

  if ! curl_wrapper -o "${output}" "${url}"; then
    fail "Failed to download: ${url}"
  fi
}

list_all_versions() {
  # Query GitHub releases API for all Ephapax versions
  local releases
  releases=$(curl_wrapper "${GITHUB_API}/releases" 2>/dev/null || echo "[]")

  echo "${releases}" \
    | grep '"tag_name"' \
    | sed 's/.*"tag_name": *"v\{0,1\}\([^"]*\)".*/\1/' \
    | sort -V
}

get_latest_stable() {
  # Get the latest non-prerelease version
  local releases
  releases=$(curl_wrapper "${GITHUB_API}/releases/latest" 2>/dev/null || echo "{}")

  echo "${releases}" \
    | grep '"tag_name"' \
    | head -1 \
    | sed 's/.*"tag_name": *"v\{0,1\}\([^"]*\)".*/\1/'
}

get_download_url() {
  local version="$1"
  local platform
  local arch
  platform="$(get_platform)"
  arch="$(get_arch)"

  # Ephapax release artifact naming convention:
  # ephapax-{version}-{platform}-{arch}.tar.gz
  echo "https://github.com/${GITHUB_REPO}/releases/download/v${version}/ephapax-${version}-${platform}-${arch}.tar.gz"
}

command_exists() {
  command -v "$1" >/dev/null 2>&1
}

check_dependencies() {
  local -a required=(curl tar grep sed sort cut mkdir rm)
  local missing=()

  for cmd in "${required[@]}"; do
    if ! command_exists "${cmd}"; then
      missing+=("${cmd}")
    fi
  done

  if [[ ${#missing[@]} -gt 0 ]]; then
    fail "Missing required dependencies: ${missing[*]}"
  fi
}
