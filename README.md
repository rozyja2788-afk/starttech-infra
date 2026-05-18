# StartTech Infrastructure Repository

This repository contains the Terraform infrastructure code and deployment automation for the Month 3 DevOps assessment.

## Infrastructure Components

- VPC and networking
- Public subnets
- Internet Gateway
- Application Load Balancer
- EC2 Auto Scaling Group
- Amazon ECR repository
- S3 frontend hosting
- CloudFront CDN
- ElastiCache Redis cluster
- CloudWatch logging and dashboard
- IAM roles and policies

## Terraform Modules

- networking
- storage
- compute
- monitoring

## CI/CD

GitHub Actions workflow validates Terraform configuration automatically.

## Deployment

Run:

terraform init
terraform validate
terraform plan
terraform apply

## Repository Structure

starttech-infra/
├── .github/workflows/
├── terraform/
├── scripts/
├── monitoring/
├── README.md
├── ARCHITECTURE.md
└── RUNBOOK.md
