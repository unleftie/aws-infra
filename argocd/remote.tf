data "terraform_remote_state" "main" {
  backend = "s3"

  config = {
    region = "eu-central-1"
    bucket = "unleftie-tf-remote-state20241001143819864600000001"
    key    = "services/aws-infra/main.tfstate"
  }
}
