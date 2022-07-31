resource "kubectl_manifest" "jaeger" {
  depends_on = [helm_release.jaeger_operator]
  yaml_body = templatefile("${path.module}/templates/jaeger.yaml", {
  })
}

