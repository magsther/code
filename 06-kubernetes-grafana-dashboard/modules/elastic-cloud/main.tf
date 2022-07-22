resource "ec_deployment" "elastic_deployment" {
  name                   = var.ec_instance_name
  region                 = var.region
  deployment_template_id = var.deployment_template_id
  version                = var.es_version

  elasticsearch {
    autoscale = var.autoscale
  }

  kibana {}
}

resource "kubernetes_manifest" "elastic_servicemonitor" {
  manifest = yamldecode(templatefile("${path.module}/templates/servicemonitor.yaml", {
    name      = var.ec_instance_name
    appName   = local.elastic_cloud.app
  }))
}

resource "kubernetes_manifest" "elastic_dashboard" {
  manifest = yamldecode(templatefile("${path.module}/templates/elastic-dashboard-configmap.yaml", {
    name      = "grafana-elastic"
    data      = file("${path.module}/files/grafana-elastic-dashboard.json")
  }))
}
