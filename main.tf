# Terraform Version
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Include VPC Module
module "vpc" {
  source          = "./modules/vpc"
  vpc_name        = var.vpc_name
  cidr_block      = var.vpc_cidr_block
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  enable_nat_gateway = var.enable_nat_gateway
}

# Include EC2 Module
module "ec2" {
  source            = "./modules/ec2"
  instance_name     = var.ec2_instance_name
  ami_id            = var.ec2_ami_id
  instance_type     = var.ec2_instance_type
  vpc_id            = module.vpc.vpc_id
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.vpc.default_sg_id
}

# Include RDS Module
module "rds" {
  source            = "./modules/rds"
  db_instance_name  = var.rds_instance_name
  engine            = var.rds_engine
  instance_class    = var.rds_instance_class
  allocated_storage = var.rds_allocated_storage
  username          = var.rds_username
  password          = var.rds_password
  vpc_id            = module.vpc.vpc_id
  subnet_ids        = module.vpc.private_subnet_ids
  security_group_id = module.vpc.default_sg_id
}

