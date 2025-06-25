resource "aws_db_instance" "main" {
  allocated_storage           = var.allocated_storage
  engine                      = var.engine
  engine_version              = var.engine_version           # NEW: Allow engine version selection
  instance_class              = var.instance_class
  identifier                  = var.db_instance_name
  username                    = var.username
  password                    = var.password
  vpc_security_group_ids      = [var.security_group_id]
  db_subnet_group_name        = aws_db_subnet_group.main.name
  skip_final_snapshot         = true
  publicly_accessible         = var.publicly_accessible      # NEW: Control public accessibility
  multi_az                    = var.multi_az                # NEW: Enable Multi-AZ deployments
  backup_retention_period     = var.backup_retention_period  # NEW: Set backup retention
  storage_encrypted           = var.storage_encrypted        # NEW: Enable storage encryption
  deletion_protection         = var.deletion_protection      # NEW: Prevent accidental deletion
  auto_minor_version_upgrade  = true
  apply_immediately           = true

  tags = {
    Name = var.db_instance_name
    Environment = var.environment
  }
}

resource "aws_db_subnet_group" "main" {
  name       = "${var.db_instance_name}-subnet-group"
  subnet_ids = var.subnet_ids
  tags = {
    Name = "${var.db_instance_name}-subnet-group"
    Environment = var.environment
  }
}


