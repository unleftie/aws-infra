# terraform-aws-remote-state-s3-backend terraform module

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.7.4 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | ~> 5.69  |

## Modules

| Name                                            | Source                            | Version |
| ----------------------------------------------- | --------------------------------- | ------- |
| <a name="module_this"></a> [this](#module_this) | nozaq/remote-state-s3-backend/aws | ~> 1.6  |

## Inputs

| Name                                                                        | Description                                             | Type     | Default          | Required |
| --------------------------------------------------------------------------- | ------------------------------------------------------- | -------- | ---------------- | :------: |
| <a name="input_region"></a> [region](#input_region)                         | The AWS region in which resources are set up.           | `string` | `"eu-central-1"` |    no    |
| <a name="input_replica_region"></a> [replica_region](#input_replica_region) | The AWS region to which the state bucket is replicated. | `string` | `"us-west-1"`    |    no    |

<!-- END_TF_DOCS -->
