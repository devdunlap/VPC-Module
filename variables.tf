variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-west-2"
}

# VPC Variables
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway"
  type        = bool
  default     = true
}

# EC2 Variables
variable "ec2_instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ec2_ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

# RDS Variables
variable "rds_instance_name" {
  description = "Name of the RDS instance"
  type        = string
}

variable "rds_engine" {
  description = "Database engine for RDS"
  type        = string
}

variable "rds_instance_class" {
  description = "Instance class for RDS"
  type        = string
}

variable "rds_allocated_storage" {
  description = "Allocated storage for RDS"
  type        = number
}

variable "rds_username" {
  description = "Username for RDS"
  type        = string
}

variable "rds_password" {
  description = "Password for RDS"
  type        = string
}

# IAM Variables
variable "iam_user_name" {
  description = "The name of the IAM user to create"
  type        = string
}

variable "iam_policy_arn" {
  description = "The ARN of the policy to attach to the user"
  type        = string
}

