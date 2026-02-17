output "vpc_id" {
  description = "L'ID du VPC créé"
  value       = aws_vpc.main.id
}

output "subnet_a_id" {
  description = "L'ID du premier subnet (AZ A)"
  value       = aws_subnet.subnet_a.id
}

output "subnet_b_id" {
  description = "L'ID du second subnet (AZ B)"
  value       = aws_subnet.subnet_b.id
}

output "instance_sg_id" {
  description = "L'ID du Security Group pour les instances"
  value       = aws_security_group.instance_sg.id
}