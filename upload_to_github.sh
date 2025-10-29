#!/bin/bash

# Dikksha Corporation Website Upload Script
# This script will help you upload all files to your GitHub repository

echo "🚀 Dikksha Corporation Website Upload Script"
echo "============================================="
echo ""

# Check if git is available
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Please run this script from the website directory"
    exit 1
fi

echo "📁 Current directory: $(pwd)"
echo "📋 Files to upload:"
ls -la | grep -E "\.(html|css|js|png|pdf|xml|txt|htaccess|webmanifest)$"
echo ""

# Initialize git if not already done
if [ ! -d ".git" ]; then
    echo "🔧 Initializing Git repository..."
    git init
fi

# Add remote if not exists
if ! git remote get-url origin &> /dev/null; then
    echo "🔗 Adding GitHub remote..."
    git remote add origin https://github.com/hardikkoradia20-design/dikkshacorporation.github.io.git
fi

# Add all files
echo "📦 Adding files to Git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Dikksha Corporation professional website - Complete industrial solutions website with all services and pages"

# Push to GitHub
echo "🚀 Pushing to GitHub..."
echo ""
echo "⚠️  You will need to authenticate with GitHub."
echo "   You can use:"
echo "   1. Personal Access Token (recommended)"
echo "   2. GitHub CLI (gh auth login)"
echo "   3. SSH key authentication"
echo ""

# Try to push
if git push -u origin master; then
    echo ""
    echo "✅ SUCCESS! Website uploaded to GitHub!"
    echo "🌐 Your website will be available at:"
    echo "   https://dikkshacorporation.github.io"
    echo ""
    echo "📋 Uploaded files:"
    echo "   • index.html (main page)"
    echo "   • about.html (about page)"
    echo "   • All service pages (8 pages)"
    echo "   • know-our-clients.html"
    echo "   • styles.css (styling)"
    echo "   • script.js (functionality)"
    echo "   • logo.png (company logo)"
    echo "   • PDF brochures"
    echo "   • SEO files (sitemap.xml, robots.txt)"
    echo "   • PWA files (sw.js, site.webmanifest)"
    echo "   • Security files (.htaccess)"
    echo ""
    echo "🎉 Your professional website is now live!"
else
    echo ""
    echo "❌ Push failed. Please check your GitHub authentication."
    echo ""
    echo "🔧 To fix this, try one of these methods:"
    echo ""
    echo "Method 1 - Personal Access Token:"
    echo "   1. Go to GitHub.com → Settings → Developer settings → Personal access tokens"
    echo "   2. Generate new token with 'repo' permissions"
    echo "   3. Use token as password when prompted"
    echo ""
    echo "Method 2 - GitHub CLI:"
    echo "   1. Install GitHub CLI: brew install gh"
    echo "   2. Run: gh auth login"
    echo "   3. Follow the prompts"
    echo ""
    echo "Method 3 - SSH Key:"
    echo "   1. Generate SSH key: ssh-keygen -t ed25519 -C 'your-email@example.com'"
    echo "   2. Add to GitHub: Settings → SSH and GPG keys"
    echo "   3. Change remote URL: git remote set-url origin git@github.com:hardikkoradia20-design/dikkshacorporation.github.io.git"
    echo ""
    echo "After setting up authentication, run this script again."
fi

echo ""
echo "📞 Need help? Contact your developer or check GitHub documentation."
