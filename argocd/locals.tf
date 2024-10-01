locals {
  application = "argocd"

  tags = {
    Project     = local.application
    ManagedBy   = "Terraform"
    Application = local.application
    Owner       = "unleftie"
    GitRepo     = "github.com/unleftie/aws-infra"
  }
}
