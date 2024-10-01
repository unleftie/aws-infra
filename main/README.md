# aws-infra

## Current infrastructure should be deployed manually, without using CICD

1. Deploy infrastructure from terraform-aws-remote-state-s3-backend module
2. Double-check variables in config/\*
3. Run terraform init and terraform apply

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.7.4 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 5.69 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_budgets"></a> [budgets](#module_budgets) | cloudposse/budgets/aws | ~> 0.5 |
| <a name="module_label"></a> [label](#module_label) | cloudposse/label/null | ~> 0.25 |
| <a name="module_vpc"></a> [vpc](#module_vpc) | terraform-aws-modules/vpc/aws | ~> 5.13 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budget_limit_amount"></a> [budget_limit_amount](#input_budget_limit_amount) | Setting a monthly usage budget with a fixed usage amount | `string` | n/a | yes |
| <a name="input_budget_subscriber_email_addresses"></a> [budget_subscriber_email_addresses](#input_budget_subscriber_email_addresses) | List of emails for forecasted notifications regarding a monthly usage budget | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input_region) | The AWS region in which resources are set up. | `string` | `"eu-central-1"` | no |
| <a name="input_vpc_cidr"></a> [vpc_cidr](#input_vpc_cidr) | The IPv4 CIDR block for the VPC. | `string` | `"10.10.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc_name](#input_vpc_name) | Name to be used on all VPC resources as identifier. | `string` | `"main"` | no |
<!-- END_TF_DOCS -->
