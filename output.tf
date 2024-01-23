output "public_ip" {
  value = aws_lightsail_instance.web_server.public_ip_address
}