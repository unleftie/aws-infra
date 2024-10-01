module "label" {
  source  = "cloudposse/label/null"
  version = "~> 0.25"

  name = local.application
}

module "budgets" {
  source  = "cloudposse/budgets/aws"
  version = "~> 0.5"

  budgets = local.budgets

  context = module.label

  tags = local.tags
}
