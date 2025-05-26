#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🚀 Setting up Nuxt.js development environment..."

# Determine the workspace directory
WORKSPACE_DIR="${WORKSPACE_DIR:-/workspaces}"
if [ -d "${WORKSPACE_DIR}" ]; then
  cd "${WORKSPACE_DIR}"
  if [ -d "${WORKSPACE_DIR}/${localWorkspaceFolderBasename:-$(basename $(pwd))}" ]; then
    cd "${WORKSPACE_DIR}/${localWorkspaceFolderBasename:-$(basename $(pwd))}"
  fi
fi

echo "📂 Current directory: $(pwd)"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Prepare Nuxt.js
echo "🔧 Preparing Nuxt.js..."
npm run postinstall

# Print success message
echo "✅ Development environment setup complete!"
echo "🌐 You can start the development server with: npm run dev"