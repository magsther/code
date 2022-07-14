output "elasticsearch_endpoint" {
  value = ec_deployment.elastic_deployment.elasticsearch[0].https_endpoint
}

output "elasticsearch_username" {
  value = ec_deployment.elastic_deployment.elasticsearch_username
}

output "elasticsearch_password" {
  value     = ec_deployment.elastic_deployment.elasticsearch_password
  sensitive = true
}
