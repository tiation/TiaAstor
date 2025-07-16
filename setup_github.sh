#!/bin/bash

# Setup script for TiaAstor resume GitHub repository and Pages
# This script automates the process of creating a remote repository and setting up GitHub Pages

set -e  # Exit on any error

echo "🚀 Setting up TiaAstor resume on GitHub..."
echo "=========================================="

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed. Please install it first:"
    echo "   brew install gh"
    exit 1
fi

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Not in a git repository. Please run this script from the TiaAstor directory."
    exit 1
fi

# Check if user is logged in to GitHub CLI
if ! gh auth status &> /dev/null; then
    echo "🔐 You need to authenticate with GitHub first."
    echo "   Running: gh auth login"
    gh auth login
fi

# Get GitHub username
GITHUB_USERNAME=$(gh api user --jq '.login')
echo "👤 GitHub username: $GITHUB_USERNAME"

# Create the repository
echo "📁 Creating GitHub repository..."
gh repo create TiaAstor --public --description "Professional HTML resume for Tia Astor - Systems Designer & Social Innovation Architect" --confirm

# Add remote and push
echo "📤 Pushing code to GitHub..."
git remote add origin https://github.com/$GITHUB_USERNAME/TiaAstor.git 2>/dev/null || echo "Remote already exists"
git branch -M main
git push -u origin main

echo "✅ Repository created and code pushed successfully!"
echo "🌐 Your repository is available at: https://github.com/$GITHUB_USERNAME/TiaAstor"

# Enable GitHub Pages
echo "📄 Enabling GitHub Pages..."
gh api repos/$GITHUB_USERNAME/TiaAstor/pages -X POST -f source.branch=main -f source.path=/

echo "🎉 Setup complete!"
echo "📋 Your resume will be available at: https://$GITHUB_USERNAME.github.io/TiaAstor/"
echo "⏳ It may take a few minutes for the site to be live."
echo ""
echo "🔄 Future updates: Just push to main branch and GitHub Pages will auto-update"
echo "📝 To update your resume: Edit index.html and run 'git add . && git commit -m \"Update resume\" && git push'"
