output "bucket" {
  description = "The S3 bucket to store the remote state file."
  value       = module.this.state_bucket.bucket
}

output "key" {
  value = "some_environment/terraform.tfstate"
}

output "region" {
  value = var.region
}

output "encrypt" {
  value = true
}

output "kms_key_id" {
  description = "The KMS customer master key to encrypt state buckets."
  value       = module.this.kms_key.key_id
}

output "dynamodb_table" {
  description = "The DynamoDB table to manage lock states."
  value       = module.this.dynamodb_table.name
}
