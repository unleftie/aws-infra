module "this" {
  source  = "nozaq/remote-state-s3-backend/aws"
  version = "~> 1.6"

  terraform_iam_policy_create      = false
  terraform_iam_policy_name_prefix = "${var.owner}_terraform"

  kms_key_alias                   = "${var.owner}-tf-remote-state-key"
  kms_key_deletion_window_in_days = 7

  state_bucket_prefix = "${var.owner}-tf-remote-state"

  enable_replication    = false
  replica_bucket_prefix = "${var.owner}-tf-remote-state-replica"

  iam_role_name_prefix       = "${var.owner}-tf-remote-state-replication-role"
  iam_policy_name_prefix     = "${var.owner}-tf-remote-state-replication-policy"
  iam_policy_attachment_name = "${var.owner}-tf-iam-role-attachment-replication-configuration"

  dynamodb_table_name = "${var.owner}-tf-remote-state-lock"

  tags = {
    managed_by = "Terraform"
    owner      = var.owner
  }

  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
}
