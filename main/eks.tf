module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.24"

  create = false

  cluster_name    = "${local.application}-cluster"
  cluster_version = "1.30"

  cluster_endpoint_private_access          = false # FIXME: unsafe
  cluster_endpoint_public_access           = true  # FIXME: unsafe
  enable_cluster_creator_admin_permissions = true  # FIXME: unsafe

  cluster_addons = {
    coredns                = {}
    eks-pod-identity-agent = {}
    kube-proxy             = {}
    vpc-cni                = {}
  }

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnets

  eks_managed_node_groups = {
    main = {
      # Starting on 1.30, AL2023 is the default AMI type for EKS managed node groups
      instance_types = ["t3.medium"]

      min_size = 2
      max_size = 3
      # This value is ignored after the initial creation
      # https://github.com/bryantbiggs/eks-desired-size-hack
      desired_size = 2
    }
  }

  tags = local.tags
}
