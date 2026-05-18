# Architecture Documentation

## Frontend

- React application
- Hosted in Amazon S3
- Delivered globally using CloudFront CDN

## Backend

- Golang API
- Dockerized backend container
- EC2 Auto Scaling Group
- Application Load Balancer

## Database

- MongoDB Atlas cluster

## Cache

- Amazon ElastiCache Redis

## Monitoring

- CloudWatch Logs
- CloudWatch Dashboard
- CloudWatch Metrics

## Security

- IAM least privilege policies
- Security Groups
- Environment variables
- Vulnerability scanning in CI/CD pipelines
