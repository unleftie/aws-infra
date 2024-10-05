resource "kubernetes_manifest" "argocd_root" {
  manifest = yamldecode(templatefile("${path.module}/templates/root.yml", {
    path1           = var.git_source1.path
    repoURL1        = var.git_source1.repoURL
    targetRevision1 = var.git_source1.targetRevision

    path2           = var.git_source2.path
    repoURL2        = var.git_source2.repoURL
    targetRevision2 = var.git_source2.targetRevision
  }))
}

resource "kubernetes_manifest" "argocd_crds" {
  manifest = yamldecode(templatefile("${path.module}/templates/crds.yml", {
    path1           = var.git_source1.path
    repoURL1        = var.git_source1.repoURL
    targetRevision1 = var.git_source1.targetRevision

    path2           = var.git_source2.path
    repoURL2        = var.git_source2.repoURL
    targetRevision2 = var.git_source2.targetRevision
  }))

  depends_on = [kubernetes_manifest.argocd_root]
}
