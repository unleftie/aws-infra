variable "region" {
  description = "The AWS region in which resources are set up."
  type        = string
  default     = "eu-central-1"
}

variable "git_source1" {
  type = map(string)
  default = {
    repoURL        = "https://github.com/example/example.git"
    path           = ""
    targetRevision = "HEAD"
  }
}

variable "git_source2" {
  type = map(string)
  default = {
    repoURL        = "https://github.com/example/example.git"
    path           = ""
    targetRevision = "HEAD"
  }
}
