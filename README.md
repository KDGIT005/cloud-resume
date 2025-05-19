# Cloud Resume Website

A cloud-based resume/portfolio website hosted on AWS with CI/CD automation.

## Architecture

This project uses the following AWS services:
- **S3**: Hosts the static website files
- **CloudFront**: Content delivery network for global distribution
- **Route 53**: DNS management (optional, for custom domain)
- **GitHub Actions**: CI/CD pipeline for automated deployments

## Project Structure

```
├── .github/
│   └── workflows/
│       └── deploy.yml    # GitHub Actions workflow for CI/CD
├── terraform/
│   ├── main.tf           # Main Terraform configuration
│   ├── variables.tf      # Variable definitions
│   ├── outputs.tf        # Output definitions
│   └── terraform.tfvars  # Variable values (create from .example)
└── website/
    ├── index.html        # Resume HTML
    ├── styles.css        # CSS styling
    └── script.js         # JavaScript for visitor counter
```

## Setup Instructions

### Prerequisites

- AWS Account
- GitHub Account
- Terraform installed locally (for testing)
- AWS CLI installed locally (for testing)

### Deployment Steps

1. **Fork/Clone this repository**

2. **Configure AWS Credentials**
   - Create an IAM user with programmatic access
   - Add the following secrets to your GitHub repository:
     - `AWS_ACCESS_KEY_ID`
     - `AWS_SECRET_ACCESS_KEY`
     - `AWS_REGION` (e.g., us-east-1)

3. **Configure Terraform Variables**
   - Copy `terraform/terraform.tfvars.example` to `terraform/terraform.tfvars`
   - Update with your own values, including a unique S3 bucket name

4. **Custom Domain (Optional)**
   - Purchase a domain in Route 53 or use an existing domain
   - Create an ACM certificate in the us-east-1 region
   - Update `terraform.tfvars` with your domain details

5. **Deploy**
   - Push to the main branch to trigger automatic deployment
   - Or manually trigger the workflow in GitHub Actions

### Local Testing

```bash
# Initialize Terraform
cd terraform
terraform init

# Plan changes
terraform plan -var-file=terraform.tfvars

# Apply changes
terraform apply -var-file=terraform.tfvars

# Upload website files
aws s3 sync ../website/ s3://your-bucket-name
```

## Customization

- Edit files in the `website/` directory to customize your resume
- Update styling in `styles.css`
- Modify the visitor counter in `script.js` (consider implementing with API Gateway and Lambda)

## CI/CD Pipeline

The GitHub Actions workflow will:
1. Deploy the AWS infrastructure using Terraform
2. Upload the website files to S3
3. Invalidate the CloudFront cache for immediate updates

## Future Enhancements

- Add a backend visitor counter with API Gateway and DynamoDB
- Implement HTTPS with custom domain
- Add form submission functionality with Lambda
- Enhance the design with additional interactive elements 