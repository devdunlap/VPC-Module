variable "db_instance_name" {
  description = "Name of the RDS instance"
  type        = string
}

variable "engine" {
  description = "Database engine for RDS"
  type        = string
}

variable "instance_class" {
  description = "Instance class for RDS"
  type        = string
}

variable "allocated_storage" {
  description = "Allocated storage for RDS"
  type        = number
}

variable "username" {
  description = "Username for RDS"
  type        = string
}

variable "password" {
  description = "Password for RDS"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for RDS"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for RDS"
  type        = string
}

