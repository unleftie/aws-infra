# argocd terraform module

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.7.4 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | ~> 5.69  |

## Modules

| Name                                                  | Source                        | Version |
| ----------------------------------------------------- | ----------------------------- | ------- |
| <a name="module_argocd"></a> [argocd](#module_argocd) | terraform-module/release/helm | ~> 2.6  |

## Inputs

| Name                                                | Description                                   | Type     | Default          | Required |
| --------------------------------------------------- | --------------------------------------------- | -------- | ---------------- | :------: |
| <a name="input_region"></a> [region](#input_region) | The AWS region in which resources are set up. | `string` | `"eu-central-1"` |    no    |

<!-- END_TF_DOCS -->
