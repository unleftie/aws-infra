resource "kubernetes_manifest" "docker_gs_ping_template" {
  manifest = yamldecode(templatefile("${path.module}/templates/argocd-application.yml", {
    name           = var.docker_gs_ping_template.name
    path           = var.docker_gs_ping_template.path
    repoURL        = var.docker_gs_ping_template.repoURL
    targetRevision = var.docker_gs_ping_template.targetRevision
  }))

  depends_on = [kubernetes_namespace.services]
}

