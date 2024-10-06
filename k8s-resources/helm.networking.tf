resource "kubernetes_manifest" "ingress_nginx_template" {
  manifest = yamldecode(templatefile("${path.module}/templates/argocd-application.yml", {
    path           = var.ingress_nginx_template.path
    repoURL        = var.ingress_nginx_template.repoURL
    targetRevision = var.ingress_nginx_template.targetRevision
  }))

  depends_on = [kubernetes_manifest.networking]
}

resource "kubernetes_manifest" "ingress_nginx_crds_template" {
  manifest = yamldecode(templatefile("${path.module}/templates/argocd-application.yml", {
    path           = var.ingress_nginx_crds_template.path
    repoURL        = var.ingress_nginx_crds_template.repoURL
    targetRevision = var.ingress_nginx_crds_template.targetRevision
  }))

  depends_on = [kubernetes_manifest.ingress_nginx_template]
}
