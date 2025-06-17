resource "aws_db_instance" "main" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  instance_class       = var.instance_class
  name                 = var.db_instance_name
  username             = var.username
  password             = var.password
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name = aws_db_subnet_group.main.name

  skip_final_snapshot = true
}

resource "aws_db_subnet_group" "main" {
  name       = "${var.db_instance_name}-subnet-group"
  subnet_ids = var.subnet_ids
  tags = {
    Name = "${var.db_instance_name}-subnet-group"
  }
}

