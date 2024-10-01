provider "aws" {
  region = var.region

  default_tags {
    tags = local.tags
  }
}

provider "aws" {
  alias  = "replica"
  region = var.replica_region

  default_tags {
    tags = local.tags
  }
}
