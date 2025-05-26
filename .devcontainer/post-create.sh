#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🚀 Setting up Nuxt.js development environment..."

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Prepare Nuxt.js
echo "🔧 Preparing Nuxt.js..."
npm run postinstall

# Print success message
echo "✅ Development environment setup complete!"
echo "🌐 You can start the development server with: npm run dev"