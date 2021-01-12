
output "kibana_url" {
  value       = aws_elasticsearch_domain.desafio-pagarme.kibana_endpoint
  description = "Kibana URL endpoint"
}

output "url" {
  value       = "https://${aws_elasticsearch_domain.desafio-pagarme.endpoint}"
  description = "Elasticsearch URL endpoint"
}

output "arn" {
  value       = aws_elasticsearch_domain.desafio-pagarme.arn
  description = "Elasticsearch ARN"
}

output "my_own_ip" {
  value = data.http.my_own_public_ip.body
}
