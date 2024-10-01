locals {
  application = "terraform-aws-remote-state-s3-backend"

  tags = {
    Project     = local.application
    ManagedBy   = "Terraform"
    Application = local.application
    Owner       = "unleftie"
    GitRepo     = "github.com/unleftie/aws-infra"
  }
}
