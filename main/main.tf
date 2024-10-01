module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.13"

  name = var.vpc_name
  cidr = var.vpc_cidr
  azs  = local.vpc_azs

  map_public_ip_on_launch = true
  enable_dns_hostnames    = false
  enable_nat_gateway      = false # FIXME: change to true when eks module is deployed
  single_nat_gateway      = true

  private_subnets = [for k, v in local.vpc_azs : cidrsubnet(var.vpc_cidr, 4, k)]
  public_subnets  = [for k, v in local.vpc_azs : cidrsubnet(var.vpc_cidr, 8, k + 48)]
  intra_subnets   = [for k, v in local.vpc_azs : cidrsubnet(var.vpc_cidr, 8, k + 52)]

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = local.tags
}
