variable "instance_name" {
  description = ASV-LOB-prod-useast-01

  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be deployed"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the EC2 instance"
  type        = string
}

