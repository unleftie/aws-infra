resource "kubernetes_manifest" "prometheus_blackbox_exporter_template" {
  manifest = yamldecode(templatefile("${path.module}/templates/argocd-application.yml", {
    name           = var.prometheus_blackbox_exporter_template.name
    path           = var.prometheus_blackbox_exporter_template.path
    repoURL        = var.prometheus_blackbox_exporter_template.repoURL
    targetRevision = var.prometheus_blackbox_exporter_template.targetRevision
  }))
}

resource "kubernetes_manifest" "kube_prometheus_stack_template" {
  manifest = yamldecode(templatefile("${path.module}/templates/argocd-application.yml", {
    name           = var.kube_prometheus_stack_template.name
    path           = var.kube_prometheus_stack_template.path
    repoURL        = var.kube_prometheus_stack_template.repoURL
    targetRevision = var.kube_prometheus_stack_template.targetRevision
  }))
}

resource "kubernetes_manifest" "kube_prometheus_stack_crds_template" {
  manifest = yamldecode(templatefile("${path.module}/templates/argocd-application.yml", {
    name           = var.kube_prometheus_stack_crds_template.name
    path           = var.kube_prometheus_stack_crds_template.path
    repoURL        = var.kube_prometheus_stack_crds_template.repoURL
    targetRevision = var.kube_prometheus_stack_crds_template.targetRevision
  }))

  depends_on = [kubernetes_manifest.kube_prometheus_stack_template]
}
