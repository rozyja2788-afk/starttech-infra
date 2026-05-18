output "frontend_bucket_name" {
  value = module.storage.frontend_bucket_name
}

output "cloudfront_distribution_id" {
  value = module.storage.cloudfront_distribution_id
}

output "cloudfront_domain_name" {
  value = module.storage.cloudfront_domain_name
}

output "backend_alb_dns_name" {
  value = module.compute.alb_dns_name
}

output "ecr_repository_url" {
  value = module.compute.ecr_repository_url
}

output "backend_log_group_name" {
  value = module.compute.backend_log_group_name
}
