output "app_server_public_ip" {
  description = "The public IP address of the application server"
  value       = aws_instance.app_server.public_ip
}
