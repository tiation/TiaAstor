# GitHub Repository Setup Instructions

Follow these steps to create a remote repository and set up GitHub Pages for your resume.

## Step 1: Create GitHub Repository

1. **Go to GitHub**: Open https://github.com in your browser
2. **Sign in** with your GitHub account (or create one if needed)
3. **Create New Repository**:
   - Click the "+" icon in the top right corner
   - Select "New repository"
   - Repository name: `TiaAstor` (or any name you prefer)
   - Description: "Professional HTML resume for Tia Astor - Systems Designer & Social Innovation Architect"
   - Make it **Public** (required for free GitHub Pages)
   - **DON'T** initialize with README, .gitignore, or license (we already have these)
   - Click "Create repository"

## Step 2: Connect Local Repository to GitHub

Copy and paste these commands in your terminal (replace `yourusername` with your actual GitHub username):

```bash
# Add the remote repository
git remote add origin https://github.com/yourusername/TiaAstor.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. **Go to Repository Settings**:
   - Navigate to your repository on GitHub
   - Click on "Settings" tab

2. **Configure Pages**:
   - Scroll down to "Pages" section in the left sidebar
   - Click on "Pages"
   - Under "Source", select "Deploy from a branch"
   - Choose "main" branch
   - Select "/ (root)" folder
   - Click "Save"

3. **Wait for Deployment**:
   - GitHub will automatically deploy your site
   - It may take a few minutes
   - You'll see a green checkmark when it's ready

## Step 4: Access Your Resume

Your resume will be available at:
```
https://yourusername.github.io/TiaAstor/
```

## Step 5: Automatic Updates

With the GitHub Actions workflow already configured, any future updates you push to the main branch will automatically update your live resume site.

## Alternative: Using GitHub CLI (if you have it installed)

If you have GitHub CLI installed (`gh`), you can create the repository directly:

```bash
# Create repository
gh repo create TiaAstor --public --description "Professional HTML resume for Tia Astor - Systems Designer & Social Innovation Architect"

# Push code
git push -u origin main
```

Then follow Step 3 above to enable GitHub Pages.

## Troubleshooting

- **Repository already exists**: Choose a different name or delete the existing one
- **Pages not working**: Make sure the repository is public and the source is set to "main" branch
- **Changes not updating**: Check the Actions tab for deployment status
- **Custom domain**: You can add a custom domain in the Pages settings if you have one

## Next Steps

1. Share your resume URL with potential employers
2. Update content by editing the HTML file and pushing changes
3. Consider adding a custom domain for a more professional look
4. Monitor the repository for any issues or improvements

Your professional resume is now ready to be shared with the world! 🚀
