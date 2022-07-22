resource "helm_release" "elasticsearch_exporter" {
  repository = var.helm_chart_repository
  name       = "prometheus-elasticsearch-exporter"
  chart      = "prometheus-elasticsearch-exporter"
  version    = var.elasticsearch_exporter_chart_version
  timeout    = 3600

  set {
    name  = "es.uri"
    value = replace(ec_deployment.elastic_deployment.elasticsearch.0.https_endpoint, "https://", "https://${ec_deployment.elastic_deployment.elasticsearch_username}:${ec_deployment.elastic_deployment.elasticsearch_password}@")
  }
}
