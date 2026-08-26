#!/usr/bin/env bash

set -euo pipefail

# Development environment setup script for asdf-ghjk contributors

echo "🚀 Setting up asdf-ghjk development environment..."

# Check for required tools
echo "📋 Checking prerequisites..."

missing_tools=()

for tool in git bash curl tar; do
  if ! command -v "$tool" &>/dev/null; then
    missing_tools+=("$tool")
  fi
done

if [[ ${#missing_tools[@]} -gt 0 ]]; then
  echo "❌ Missing required tools: ${missing_tools[*]}"
  echo "Please install them and try again."
  exit 1
fi

echo "✅ All required tools found"

# Check for ShellCheck
if ! command -v shellcheck &>/dev/null; then
  echo "⚠️  ShellCheck not found (recommended for linting)"
  echo "Install with:"
  echo "  - Ubuntu/Debian: sudo apt-get install shellcheck"
  echo "  - macOS: brew install shellcheck"
else
  echo "✅ ShellCheck found"
fi

# Check for asdf
if ! command -v asdf &>/dev/null; then
  echo "⚠️  asdf not found (required for testing)"
  echo "Install from: https://asdf-vm.com"
else
  echo "✅ asdf found ($(asdf --version))"
fi

# Install BATS if not present
if [[ ! -d "test/bats" ]]; then
  echo "📦 Installing BATS testing framework..."

  git clone --depth 1 https://github.com/bats-core/bats-core.git test/bats
  git clone --depth 1 https://github.com/bats-core/bats-support.git test/bats-support
  git clone --depth 1 https://github.com/bats-core/bats-assert.git test/bats-assert

  echo "✅ BATS installed"
else
  echo "✅ BATS already installed"
fi

# Make all bin scripts executable
echo "🔧 Setting script permissions..."
chmod +x bin/*
echo "✅ Script permissions set"

# Add plugin to asdf if asdf is installed
if command -v asdf &>/dev/null; then
  echo "🔌 Adding plugin to asdf..."

  if asdf plugin list | grep -q ghjk; then
    echo "⚠️  Plugin already added, removing first..."
    asdf plugin remove ghjk || true
  fi

  asdf plugin add ghjk "$(pwd)"
  echo "✅ Plugin added to asdf"

  # Test listing versions
  echo "🧪 Testing plugin..."
  if asdf list all ghjk &>/dev/null; then
    echo "✅ Plugin test successful"
  else
    echo "⚠️  Plugin test failed (this might be okay if GitHub API is rate-limited)"
  fi
fi

# Create sample .env file
if [[ ! -f ".env" ]]; then
  cat > .env << 'EOF'
# Development environment variables
# Copy this to .env and fill in values

# GitHub API token (optional, but recommended to avoid rate limits)
# Create at: https://github.com/settings/tokens
GITHUB_API_TOKEN=

# Enable asdf debug mode (uncomment to enable)
# ASDF_DEBUG=1
EOF
  echo "✅ Created .env template"
else
  echo "ℹ️  .env already exists"
fi

echo ""
echo "✨ Development environment setup complete!"
echo ""
echo "Next steps:"
echo "  1. Run tests: ./test/bats/bin/bats test/"
echo "  2. Lint code: shellcheck bin/* lib/*.sh lib/*.bash"
echo "  3. Try installing ghjk: asdf install ghjk latest"
echo "  4. Read CONTRIBUTING.adoc for development guidelines"
echo ""
echo "Happy coding! 🎉"
