# Public IP Address of EC2 instance
output "public_ip" {
  value       = aws_instance.public_instance.public_ip
  description = "Public IP Address of EC2 instance"
}
# Instance ID
output "instance_id" {
  value       = aws_instance.public_instance.id
  description = "Instance ID"
}