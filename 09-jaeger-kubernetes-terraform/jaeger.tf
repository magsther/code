resource "helm_release" "jaeger_operator" {
  repository = local.helm_chart_repository
  name       = "jaeger-operator"
  chart      = "jaeger-operator"
  version    = var.jaeger_operator_chart_version
  timeout    = 3600

  # Ensure jaeger-operator operates on things (e.g. CRs) in cluster-wide scope.
  set {
    name  = "rbac.clusterRole"
    value = true
  }
}
