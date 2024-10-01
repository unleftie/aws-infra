# terraform-aws-remote-state-s3-backend

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.7.4 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | ~> 5.69  |

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | ~> 5.69 |

## Inputs

| Name                                                                        | Description                                             | Type     | Required |
| --------------------------------------------------------------------------- | ------------------------------------------------------- | -------- | :------: |
| <a name="input_owner"></a> [owner](#input_owner)                            | n/a                                                     | `string` |    no    |
| <a name="input_region"></a> [region](#input_region)                         | The AWS region in which resources are set up.           | `string` |    no    |
| <a name="input_replica_region"></a> [replica_region](#input_replica_region) | The AWS region to which the state bucket is replicated. | `string` |    no    |

## Outputs

| Name                                                                          | Description                                           |
| ----------------------------------------------------------------------------- | ----------------------------------------------------- |
| <a name="output_bucket"></a> [bucket](#output_bucket)                         | The S3 bucket to store the remote state file.         |
| <a name="output_dynamodb_table"></a> [dynamodb_table](#output_dynamodb_table) | The DynamoDB table to manage lock states.             |
| <a name="output_encrypt"></a> [encrypt](#output_encrypt)                      | n/a                                                   |
| <a name="output_key"></a> [key](#output_key)                                  | n/a                                                   |
| <a name="output_kms_key_id"></a> [kms_key_id](#output_kms_key_id)             | The KMS customer master key to encrypt state buckets. |
| <a name="output_region"></a> [region](#output_region)                         | n/a                                                   |
