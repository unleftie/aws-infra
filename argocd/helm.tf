provider "kubernetes" {
  host                   = data.aws_eks_cluster.this.endpoint
  token                  = data.aws_eks_cluster_auth.this.token
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.this.certificate_authority[0].data)
}

resource "kubernetes_manifest" "argocd_root" {
  manifest = yamldecode(templatefile("${path.module}/root.yaml", {
    path           = var.git_source_path
    repoURL        = var.git_source_repoURL
    targetRevision = var.git_source_targetRevision
  }))
}

module "argocd" {
  source  = "terraform-module/release/helm"
  version = "~> 2.6"

  namespace  = "argocd"
  repository = "https://argoproj.github.io/argo-helm"

  app = {
    name          = "argocd"
    version       = "7.6.7"
    chart         = "argo/argo-cd"
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }

  values = [templatefile("argocd.yml", {
    storage = "4Gi"
  })]

  set = [
    {
      name  = "labels.kubernetes\\.io/name"
      value = "argocd"
    },
    {
      name  = "service.labels.kubernetes\\.io/name"
      value = "argocd"
    },
  ]
}
