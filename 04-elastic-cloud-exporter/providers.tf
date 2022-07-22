provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path = pathexpand(var.kube_config)
}

provider "ec" {
  apikey = var.ec_api_key
}
