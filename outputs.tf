output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.swasthik_vpc.id
}

output "subnet_id" {
  description = "The ID of the created Subnet"
  value       = aws_subnet.swasthik_subnet.id
}