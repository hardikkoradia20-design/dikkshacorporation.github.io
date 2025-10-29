# 🚀 GitHub Upload Guide for Dikksha Corporation Website

## Quick Upload Instructions

### Method 1: Using the Upload Script (Recommended)
```bash
cd /Users/user/professional-website
./upload_to_github.sh
```

### Method 2: Manual Git Commands
```bash
# Navigate to your website directory
cd /Users/user/professional-website

# Initialize git (if not already done)
git init

# Add remote repository
git remote add origin https://github.com/hardikkoradia20-design/dikkshacorporation.github.io.git

# Add all files
git add .

# Commit changes
git commit -m "Dikksha Corporation professional website - Complete industrial solutions website"

# Push to GitHub
git push -u origin master
```

## 🔐 GitHub Authentication

You'll need to authenticate with GitHub. Choose one method:

### Option 1: Personal Access Token (Easiest)
1. Go to [GitHub.com](https://github.com) → Settings → Developer settings → Personal access tokens
2. Click "Generate new token (classic)"
3. Select "repo" permissions
4. Copy the token
5. Use your GitHub username and the token as password when prompted

### Option 2: GitHub CLI
```bash
# Install GitHub CLI
brew install gh

# Authenticate
gh auth login

# Follow the prompts
```

### Option 3: SSH Key
```bash
# Generate SSH key
ssh-keygen -t ed25519 -C "your-email@example.com"

# Add to GitHub
# Go to Settings → SSH and GPG keys → New SSH key
# Copy the public key content

# Change remote URL to SSH
git remote set-url origin git@github.com:hardikkoradia20-design/dikkshacorporation.github.io.git
```

## 📁 Files Being Uploaded

- **index.html** - Main homepage
- **about.html** - About us page
- **Service Pages (8 pages):**
  - industrial-switchgear.html
  - automation-supplies.html
  - safety-equipment.html
  - cables-connectivity.html
  - transformer-services.html
  - interior-fitouts.html
  - yarn-flock-powder.html
  - signage-consumables.html
- **know-our-clients.html** - Client testimonials
- **styles.css** - Website styling
- **script.js** - Interactive functionality
- **logo.png** - Company logo
- **PDF brochures** - Company documents
- **SEO files** - sitemap.xml, robots.txt
- **PWA files** - sw.js, site.webmanifest
- **Security files** - .htaccess

## 🌐 After Upload

Once uploaded, your website will be available at:
**https://dikkshacorporation.github.io**

## ✅ Verification

After upload, check:
1. Visit https://dikkshacorporation.github.io
2. Test all pages and links
3. Verify mobile responsiveness
4. Check contact forms and functionality

## 🆘 Troubleshooting

### If push fails:
- Check your internet connection
- Verify GitHub authentication
- Ensure repository exists and you have write access
- Try using SSH instead of HTTPS

### If website doesn't load:
- Wait 5-10 minutes for GitHub Pages to update
- Check repository settings → Pages
- Ensure index.html is in the root directory

## 📞 Support

If you encounter issues:
1. Check GitHub documentation
2. Verify repository permissions
3. Contact your developer for assistance

---
**Good luck with your website launch! 🎉**
