# PowerShell script to initialize git repository and prepare for deployment

# Initialize git repository
git init

# Add all files
git add .

# Initial commit
git commit -m "Initial commit for resume website project"

# Instructions for adding remote repository
Write-Host ""
Write-Host "Repository initialized successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Create a repository on GitHub" -ForegroundColor Yellow
Write-Host "2. Run the following commands to push your code:" -ForegroundColor Yellow
Write-Host "   git remote add origin https://github.com/yourusername/resume-website.git" -ForegroundColor Cyan
Write-Host "   git push -u origin master" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Enable GitHub Pages in your repository settings:" -ForegroundColor Yellow
Write-Host "   - Go to your repository on GitHub" -ForegroundColor Cyan
Write-Host "   - Click on Settings > Pages" -ForegroundColor Cyan
Write-Host "   - Under 'Build and deployment', select 'GitHub Actions' as the source" -ForegroundColor Cyan
Write-Host ""
Write-Host "Your website will be available at: https://yourusername.github.io/resume-website/" -ForegroundColor Green 