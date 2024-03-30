output "app_server_public_ips" {
  value = aws_instance.app_server.*.public_ip
}

output "prod_db_endpoint" {
  value = aws_db_instance.prod_db.endpoint
}
