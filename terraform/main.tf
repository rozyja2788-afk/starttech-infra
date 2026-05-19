module "networking" {
  source       = "./modules/networking"
  project_name = var.project_name
}

module "storage" {
  source               = "./modules/storage"
  project_name         = var.project_name
  frontend_bucket_name = var.frontend_bucket_name
}

module "monitoring" {
  source       = "./modules/monitoring"
  project_name = var.project_name
}

module "compute" {
  source            = "./modules/compute"
  project_name      = var.project_name
  aws_region        = var.aws_region
  vpc_id            = module.networking.vpc_id
  public_subnet_ids = module.networking.public_subnet_ids
  backend_image     = var.backend_image
  mongo_uri         = var.mongo_uri
  jwt_secret        = var.jwt_secret_key
}
