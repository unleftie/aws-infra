resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

module "argocd" {
  source  = "terraform-module/release/helm"
  version = "~> 2.6"

  namespace  = "argocd"
  repository = "https://argoproj.github.io/argo-helm"

  app = {
    name          = "argocd"
    version       = "7.6.7"
    chart         = "argo-cd"
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }

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

  depends_on = [kubernetes_namespace.argocd]
}
