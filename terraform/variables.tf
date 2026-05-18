variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "starttech-muchtodo"
}

variable "frontend_bucket_name" {
  type = string
}

variable "mongo_uri" {
  type      = string
  sensitive = true
}

variable "jwt_secret" {
  type      = string
  sensitive = true
}

variable "backend_container_port" {
  type    = number
  default = 8080
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}
