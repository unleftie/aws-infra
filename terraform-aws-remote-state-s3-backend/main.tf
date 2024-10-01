module "this" {
  source  = "nozaq/remote-state-s3-backend/aws"
  version = "~> 1.6"

  terraform_iam_policy_create      = false
  terraform_iam_policy_name_prefix = "${local.tags["Owner"]}_terraform"

  kms_key_alias                   = "${local.tags["Owner"]}-tf-remote-state-key"
  kms_key_deletion_window_in_days = 7

  state_bucket_prefix = "${local.tags["Owner"]}-tf-remote-state"

  enable_replication    = false
  replica_bucket_prefix = "${local.tags["Owner"]}-tf-remote-state-replica"

  iam_role_name_prefix       = "${local.tags["Owner"]}-tf-remote-state-replication-role"
  iam_policy_name_prefix     = "${local.tags["Owner"]}-tf-remote-state-replication-policy"
  iam_policy_attachment_name = "${local.tags["Owner"]}-tf-iam-role-attachment-replication-configuration"

  dynamodb_table_name = "${local.tags["Owner"]}-tf-remote-state-lock"

  tags = local.tags

  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
}
