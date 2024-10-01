module "vpc1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.13"

  name = var.vpc1_name
  cidr = var.vpc1_cidr
  azs  = local.vpc_azs

  map_public_ip_on_launch = true
  enable_dns_hostnames    = false

  public_subnets = [for k, v in local.vpc_azs : cidrsubnet(var.vpc1_cidr, 8, k + 4)]

  tags = local.tags
}
