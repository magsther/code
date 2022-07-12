terraform {
  required_providers {
    kind = {
      source = "tehcyx/kind"
      version = "0.0.13"
    }
  }
}

provider "kind" {}

  resource "kind_cluster" "default" {
    name = "kindcluster"
    node_image = "kindest/node:v1.24.0"
    wait_for_ready = true
    
    kind_config {
      kind = "Cluster"
      api_version = "kind.x-k8s.io/v1alpha4"

      node {
        role = "control-plane"
      }

      node {
        role = "worker"
      }
    }
  }
