resource "kubernetes_namespace" "networking" {
  metadata {
    name = "networking"
  }
}

resource "kubernetes_namespace" "services" {
  metadata {
    name = "services"
  }
}
