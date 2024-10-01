# aws-infra

## Current infrastructure should be deployed manually, without using CICD

1. Deploy infrastructure from terraform-aws-remote-state-s3-backend module
2. Double-check variables in config/\*
3. Run terraform init and terraform apply
