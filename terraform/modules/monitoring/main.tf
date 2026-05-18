variable "project_name" {
  type = string
}

variable "backend_log_group_name" {
  type = string
}

resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${var.project_name}-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "text"
        x      = 0
        y      = 0
        width  = 24
        height = 2
        properties = {
          markdown = "# ${var.project_name} Monitoring"
        }
      },
      {
        type   = "log"
        x      = 0
        y      = 2
        width  = 24
        height = 6
        properties = {
          query  = "SOURCE '${var.backend_log_group_name}' | fields @timestamp, @message | sort @timestamp desc | limit 20"
          region = "us-east-1"
          title  = "Recent Backend Logs"
          view   = "table"
        }
      }
    ]
  })
}
