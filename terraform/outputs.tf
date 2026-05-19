output "frontend_bucket_name" {
  value = module.storage.frontend_bucket_name
}

output "cloudfront_domain_name" {
  value = module.storage.cloudfront_domain_name
}

output "alb_dns_name" {
  value = module.compute.alb_dns_name
}

output "backend_log_group_name" {
  value = module.monitoring.backend_log_group_name
}
