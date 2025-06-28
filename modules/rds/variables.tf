variable "db_instance_name" {
  description = "Name of the RDS instance"
  type        = string
}

variable "engine" {
  description = "Database engine for RDS"
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = "8.0"
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
  sensitive   = true
}

variable "password" {
  description = "Password for RDS"
  type        = string
  sensitive   = true
}

variable "subnet_ids" {
  description = "List of subnet IDs for RDS"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for RDS"
  type        = string
}

variable "publicly_accessible" {
  description = "Whether the DB instance is publicly accessible"
  type        = bool
  default     = false
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  type        = number
  default     = 7
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  type        = bool
  default     = true
}

variable "deletion_protection" {
  description = "If the DB instance should have deletion protection enabled"
  type        = bool
  default     = false
}

variable "environment" {
  description = "The environment for tagging"
  type        = string
  default     = "QA"
}



