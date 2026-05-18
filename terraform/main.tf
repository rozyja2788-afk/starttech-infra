terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "networking" {
  source       = "./modules/networking"
  project_name = var.project_name
}

module "storage" {
  source               = "./modules/storage"
  project_name         = var.project_name
  frontend_bucket_name = var.frontend_bucket_name
}

module "compute" {
  source                 = "./modules/compute"
  project_name           = var.project_name
  aws_region             = var.aws_region
  vpc_id                 = module.networking.vpc_id
  public_subnet_ids      = module.networking.public_subnet_ids
  alb_security_group_id  = module.networking.alb_security_group_id
  ec2_security_group_id  = module.networking.ec2_security_group_id
  mongo_uri              = var.mongo_uri
  jwt_secret             = var.jwt_secret
  backend_container_port = var.backend_container_port
  instance_type          = var.instance_type
}

module "monitoring" {
  source                 = "./modules/monitoring"
  project_name           = var.project_name
  backend_log_group_name = module.compute.backend_log_group_name
}
