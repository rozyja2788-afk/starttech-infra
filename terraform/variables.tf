variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "starttech-muchtodo"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "frontend_bucket_name" {
  description = "Existing frontend S3 bucket name"
  type        = string
}

variable "backend_image" {
  description = "Backend Docker image URI"
  type        = string
}

variable "mongo_uri" {
  description = "MongoDB Atlas connection string"
  type        = string
  sensitive   = true
}

variable "jwt_secret_key" {
  description = "JWT secret for backend API"
  type        = string
  sensitive   = true
}
