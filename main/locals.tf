locals {
  application = "aws-infra"

  tags = {
    Project     = local.application
    ManagedBy   = "Terraform"
    Application = "AWS Infra Service"
    Owner       = "unleftie"
    GitRepo     = "github.com/unleftie/${local.application}"
  }

  vpc_azs = slice(data.aws_availability_zones.available.names, 0, 3)

  budgets = [
    {
      name         = "${var.budget_limit_amount}-total-monthly"
      budget_type  = "COST"
      limit_amount = var.budget_limit_amount
      limit_unit   = "USD"
      time_unit    = "MONTHLY"
      notification = [
        {
          comparison_operator        = "GREATER_THAN"
          threshold                  = "60"
          threshold_type             = "PERCENTAGE"
          notification_type          = "FORECASTED"
          subscriber_email_addresses = var.budget_subscriber_email_addresses
        },
        {
          comparison_operator        = "GREATER_THAN"
          threshold                  = "90"
          threshold_type             = "PERCENTAGE"
          notification_type          = "FORECASTED"
          subscriber_email_addresses = var.budget_subscriber_email_addresses
      }]
    }
  ]
}
