#!/bin/bash

# Follymaps Setup Script
# This script initializes the Follymaps project and sets up the development environment

echo "🗺️  Setting up Follymaps..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "📦 Installing dependencies..."
npm install

echo "🏗️  Building the site..."
npm run build

echo "✅ Setup complete!"
echo ""
echo "🚀 To start developing:"
echo "   npm start"
echo ""
echo "🌐 To build for production:"
echo "   npm run build"
echo ""
echo "📝 To set up PagesCMS:"
echo "   1. Push this repository to GitHub"
echo "   2. Visit https://app.pagescms.org"
echo "   3. Connect your GitHub repository"
echo "   4. The .pages.yml configuration is already set up!"
echo ""
echo "🗺️  Happy mapping!"