# Deployment Guide for Cloud Resume Website

This guide provides step-by-step instructions to deploy your cloud resume website.

## 1. Set Up GitHub Repository

1. Create a new GitHub repository
2. Push your code to the repository:
   ```
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/yourusername/cloud-resume.git
   git push -u origin main
   ```

## 2. Configure AWS Credentials

1. Create an IAM user with programmatic access and the following permissions:
   - AmazonS3FullAccess
   - CloudFrontFullAccess
   - AmazonRoute53FullAccess (if using a custom domain)
   - IAMFullAccess (for creating service roles)

2. Add the following secrets to your GitHub repository:
   - Go to your GitHub repository → Settings → Secrets and variables → Actions
   - Add the following repository secrets:
     - `AWS_ACCESS_KEY_ID`: Your AWS access key
     - `AWS_SECRET_ACCESS_KEY`: Your AWS secret key
     - `AWS_REGION`: us-east-1 (or your preferred region)

## 3. Update Terraform Configuration

1. Modify `terraform/terraform.tfvars` with your specific values:
   - Set a globally unique `bucket_name` (S3 bucket names must be globally unique)
   - Configure custom domain settings if needed

## 4. Deploy Your Infrastructure

### Option 1: Deploy using GitHub Actions (Recommended)

1. Push your changes to GitHub
2. GitHub Actions will automatically deploy your infrastructure
3. Check the Actions tab in your GitHub repository to monitor the deployment

### Option 2: Manual Deployment

If you prefer to deploy manually or test locally:

1. Install Terraform:
   - Windows: Download from https://www.terraform.io/downloads.html
   - Add Terraform to your PATH

2. Install AWS CLI:
   - Windows: Download from https://aws.amazon.com/cli/
   - Configure AWS CLI with `aws configure`

3. Deploy with Terraform:
   ```
   cd terraform
   terraform init
   terraform plan -var-file=terraform.tfvars
   terraform apply -var-file=terraform.tfvars
   ```

4. Upload website files to S3:
   ```
   aws s3 sync ../website/ s3://your-bucket-name
   ```

## 5. Access Your Website

After deployment:

1. For CloudFront distribution: Find the URL in the Terraform outputs or AWS Console
2. For custom domain: Access your website using your domain name (if configured)

## 6. Troubleshooting

- **CloudFront Distribution Takes Time**: CloudFront distributions can take 15-30 minutes to fully deploy
- **S3 Permissions**: Ensure your bucket policy allows public read access
- **Custom Domain Issues**: Verify your DNS configuration if using a custom domain 