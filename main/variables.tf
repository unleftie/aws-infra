variable "region" {
  description = "The AWS region in which resources are set up."
  type        = string
  default     = "eu-central-1"
}

# VPC 1
variable "vpc1_cidr" {
  description = "The IPv4 CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc1_name" {
  description = "Name to be used on all VPC resources as identifier."
  type        = string
  default     = "vpc1"
}

variable "budget_limit_amount" {
  description = "Setting a monthly usage budget with a fixed usage amount"
  type        = string
}

variable "budget_subscriber_email_addresses" {
  description = "List of emails for forecasted notifications regarding a monthly usage budget"
  type        = list(string)
}
