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

variable "ec_api_key" {
  type        = string
  sensitive   = true
  description = "API key of Elastic Cloud"
}
