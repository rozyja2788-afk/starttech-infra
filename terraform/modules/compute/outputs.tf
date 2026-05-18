output "alb_dns_name" {
  value = aws_lb.backend.dns_name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.backend.repository_url
}

output "backend_log_group_name" {
  value = aws_cloudwatch_log_group.backend.name
}
