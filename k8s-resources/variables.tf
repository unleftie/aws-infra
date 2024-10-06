variable "region" {
  description = "The AWS region in which resources are set up."
  type        = string
  default     = "eu-central-1"
}

variable "prometheus_blackbox_exporter_template" {
  type = map(string)
}

variable "kube_prometheus_stack_template" {
  type = map(string)
}

variable "kube_prometheus_stack_crds_template" {
  type = map(string)
}

variable "ingress_nginx_template" {
  type = map(string)
}

variable "ingress_nginx_crds_template" {
  type = map(string)
}
