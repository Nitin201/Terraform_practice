output "instance_id" {
  description = "id of instance"
  value       = aws_instance.example.id
}
output "public_ip" {
  description = "public ip of instance"
  value       = aws_instance.example.public_ip
}