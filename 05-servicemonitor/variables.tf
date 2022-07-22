variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "ec_api_key" {
  type        = string
  sensitive   = true
  description = "API key of Elastic Cloud"
}
