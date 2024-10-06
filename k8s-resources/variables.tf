variable "region" {
  description = "The AWS region in which resources are set up."
  type        = string
  default     = "eu-central-1"
}

variable "prometheus_blackbox_exporter_template" {
  type = map(any)
}

variable "kube_prometheus_stack_template" {
  type = map(any)
}

variable "kube_prometheus_stack_crds_template" {
  type = map(any)
}

variable "ingress_nginx_template" {
  type = map(any)
}

variable "ingress_nginx_crds_template" {
  type = map(any)
}

variable "docker_gs_ping_template" {
  type = map(any)
}
