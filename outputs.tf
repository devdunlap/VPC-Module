output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2.public_ip
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = module.rds.endpoint
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

