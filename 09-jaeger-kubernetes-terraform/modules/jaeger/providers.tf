terraform {
  required_version = ">= 1.1.2"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.12.1"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.6.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "~> 1.14.0"
    }
  }
}
