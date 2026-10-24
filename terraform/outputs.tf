output "web_public_ip" {
  description = "Public IPv4 address of the web server"
  value       = aws_instance.web.public_ip
}

output "web_public_dns" {
  value = aws_instance.web.public_dns
}

output "db_private_ip" {
  description = "Private IPv4 address of the database server"
  value       = aws_instance.db.private_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "web_security_group_id" {
  value = aws_security_group.web.id
}

output "db_security_group_id" {
  value = aws_security_group.db.id
}
