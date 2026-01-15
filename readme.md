# AWS S3 Static Website with CloudFront CDN (Terraform)

This project deploys a simple static website to AWS S3 with CloudFront CDN using Terraform.
It demonstrates core Infrastructure-as-Code concepts and serves as a clean, minimal example of AWS provisioning with global content delivery.

## 🚀 Features

- S3 bucket created via Terraform
- Static website hosting enabled
- CloudFront CDN distribution for global content delivery
- Origin Access Identity (OAI) for secure S3 access
- HTTPS-enabled website with CloudFront
- Automatic bucket policy configuration
- HTML file automatically uploaded
- Both S3 and CloudFront URLs output after deployment

## 📁 Project Structure

AWS-s3-static-website/
├── infra/
│   ├── main.tf                 # S3 bucket, CloudFront distribution, OAI, policies
│   ├── variables.tf            # Input variables (bucket name, region)
│   ├── outputs.tf              # Website URLs (CloudFront + direct S3)
│   └── index.html              # Static website content
├── .github/
│   └── workflows/              # GitHub Actions for CI/CD (optional)
└── readme.md                   # Project documentation

## 🛠️ Requirements

- Terraform ≥ 1.0
- AWS CLI configured (`aws configure`)
- An AWS account
- A globally unique S3 bucket name

## 🔧 Deployment

### 1. Initialize Terraform

terraform init

### 2. Apply the configuration

Replace the bucket name with your own unique name:

terraform apply -var="bucket_name=your-unique-bucket-name"

Type `yes` when prompted.

**Note**: CloudFront distribution creation typically takes 10-15 minutes to deploy globally.

## 🌐 Access Your Website

After deployment, Terraform outputs two URLs:

- **CloudFront CDN URL** (recommended for production):
  ```
  website_url = https://your-distribution-id.cloudfront.net
  ```

- **Direct S3 URL** (for testing):
  ```
  s3_website_url = http://your-bucket-name.s3-website-us-east-1.amazonaws.com
  ```

Use the CloudFront URL for better performance, HTTPS, and global distribution. The S3 URL is useful for testing before CloudFront propagates.

## ☁️ CloudFront Benefits

- **Global CDN**: Content served from 200+ edge locations worldwide
- **HTTPS by default**: Secure connections with SSL/TLS
- **Performance**: Faster loading times through caching and compression
- **Security**: Direct S3 access blocked; only accessible via CloudFront
- **Cost-effective**: Reduced S3 costs through caching
- **Scalability**: Automatic scaling to handle traffic spikes

## 🧹 Cleanup

To remove all resources:

terraform destroy

## 📚 What This Project Demonstrates

- AWS S3 static hosting
- CloudFront CDN configuration
- Origin Access Identity (OAI) setup
- Secure S3 access via CloudFront only
- Bucket policies and resource relationships
- Terraform resource dependencies
- File uploads via Terraform
- Multi-resource AWS infrastructure
- HTTPS and global content delivery
- Clean IaC project structure

This project is ideal for cloud/DevOps portfolios and interview discussions.

## ✨ Author

Built by Hatim — Cloud & DevOps Engineer in progress.