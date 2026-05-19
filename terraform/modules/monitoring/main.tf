resource "aws_cloudwatch_log_group" "backend" {
  name              = "/aws/ec2/${var.project_name}-backend"
  retention_in_days = 14

  tags = {
    Name = "${var.project_name}-backend-logs"
  }
}
