terraform {
  required_providers {
    ec = {
      source = "elastic/ec"
      version = "0.4.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.6.0"
    }
  }
}
