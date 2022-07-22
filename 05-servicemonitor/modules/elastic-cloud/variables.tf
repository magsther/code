variable "ec_instance_name" {
  type        = string
  default     = ""
  description = "Name of Elastic deployment"
}

variable "region" {
  type        = string
  default     = "azure-westeurope"
  description = "Region of Elastic deployment"
}

variable "es_version" {
  type        = string
  default     = "8.2.3"
  description = "Version of Elastic deployment"
}

variable "deployment_template_id" {
  type        = string
  default     = "azure-memory-optimized"
  description = "Azure SKU of Elastic deployment"
}

variable "autoscale" {
  default     = false
  type        = bool
  description = "Autocale enabled of Elastic deployment"
}

variable "helm_chart_repository" {
  type = string
  default = "https://prometheus-community.github.io/helm-charts"
  description = "Helm Chart repository"
}

variable "elasticsearch_exporter_chart_version" {
  type        = string
  description = "The version of the elasticsearch-exporter chart in the Helm repository."
  default     = "4.13.0"
}

variable "ec_api_key" {
  type        = string
  sensitive   = true
  description = "API key of Elastic Cloud"
}
