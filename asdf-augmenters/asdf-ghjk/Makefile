# SPDX-License-Identifier: AGPL-3.0-or-later
# Makefile for asdf-ghjk
# This Makefile provides standard make targets that wrap just commands

.PHONY: all setup test lint format check install uninstall clean doctor benchmark help

# Default target
all: check

# Setup development environment
setup:
	@./scripts/setup-dev.sh

# Run all tests
test:
	@./scripts/test.sh

# Run linting (ShellCheck)
lint:
	@shellcheck bin/* lib/*.sh lib/*.bash scripts/*.sh hooks/*.sh 2>/dev/null || shellcheck bin/* lib/*.sh lib/*.bash

# Format shell scripts (requires shfmt)
format:
	@if command -v shfmt >/dev/null 2>&1; then \
		shfmt -w -i 2 -ci bin/* lib/*.sh lib/*.bash scripts/*.sh; \
	else \
		echo "shfmt not found, skipping format"; \
	fi

# Run all quality checks (lint + test)
check: lint test
	@echo "All checks passed!"

# Install plugin to local asdf
install:
	@if asdf plugin list 2>/dev/null | grep -q ghjk; then \
		echo "Removing existing plugin..."; \
		asdf plugin remove ghjk || true; \
	fi
	@asdf plugin add ghjk "$$(pwd)"
	@echo "Plugin installed!"

# Uninstall plugin from local asdf
uninstall:
	@asdf plugin remove ghjk 2>/dev/null || true
	@echo "Plugin uninstalled!"

# Clean up cache and temporary files
clean:
	@./scripts/cleanup.sh --all

# Clean cache only
clean-cache:
	@./scripts/cleanup.sh --cache

# Run diagnostic checks
doctor:
	@./scripts/doctor.sh

# Run performance benchmarks
benchmark:
	@./scripts/benchmark.sh

# Verify RSR compliance
rsr-check:
	@./scripts/rsr-verify.sh

# Show help
help:
	@echo "asdf-ghjk Makefile targets:"
	@echo ""
	@echo "  setup      - Setup development environment"
	@echo "  test       - Run all tests"
	@echo "  lint       - Run ShellCheck linting"
	@echo "  format     - Format shell scripts with shfmt"
	@echo "  check      - Run lint and test (default)"
	@echo "  install    - Install plugin to asdf"
	@echo "  uninstall  - Remove plugin from asdf"
	@echo "  clean      - Clean cache and downloads"
	@echo "  doctor     - Run diagnostic checks"
	@echo "  benchmark  - Run performance benchmarks"
	@echo "  rsr-check  - Verify RSR compliance"
	@echo "  help       - Show this help"
	@echo ""
	@echo "For more targets, use 'just --list' (requires just)"
