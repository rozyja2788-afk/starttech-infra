# Operations Runbook

## Terraform Validation

terraform init
terraform validate

## Terraform Deployment

terraform plan
terraform apply

## Frontend Deployment

GitHub Actions builds the React application and deploys static files to S3.

## Backend Deployment

GitHub Actions:
- builds Docker image
- runs tests
- pushes image to ECR
- deploys backend to EC2 Auto Scaling Group

## Monitoring

CloudWatch Logs:
- backend application logs
- deployment logs

## Troubleshooting

### Terraform Init Failure

Check:
- internet connection
- AWS credentials
- Terraform version

### Backend Health Issues

Verify:
- EC2 instance health
- ALB target group health
- Docker container logs
- MongoDB connection string

### Frontend Access Issues

Verify:
- S3 bucket policy
- CloudFront distribution
- frontend build artifacts
