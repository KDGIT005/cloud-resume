# PowerShell script to initialize git repository and prepare for deployment

# Initialize git repository
git init

# Add all files
git add .

# Initial commit
git commit -m "Initial commit for cloud resume project"

# Instructions for adding remote repository
Write-Host ""
Write-Host "Repository initialized successfully!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Create a repository on GitHub" -ForegroundColor Yellow
Write-Host "2. Run the following commands to push your code:" -ForegroundColor Yellow
Write-Host "   git remote add origin https://github.com/yourusername/cloud-resume.git" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Set up GitHub repository secrets for AWS credentials" -ForegroundColor Yellow
Write-Host "   - AWS_ACCESS_KEY_ID" -ForegroundColor Cyan
Write-Host "   - AWS_SECRET_ACCESS_KEY" -ForegroundColor Cyan
Write-Host "   - AWS_REGION" -ForegroundColor Cyan
Write-Host ""
Write-Host "See DEPLOYMENT.md for detailed instructions" -ForegroundColor Green 