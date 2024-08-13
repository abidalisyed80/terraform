provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source              = "./modules/vpc"
  cidr_block          = "10.0.0.0/16"
  subnet_count        = 2
  availability_zones  = ["us-east-1a", "us-east-1b"]
}

module "security_group" {
  source        = "./modules/security_group"
  sg_name       = "allow_cidr"
  sg_description = "Allow access from 172.31.0.0/16"
  vpc_id        = module.vpc.vpc_id
  from_port     = 0
  to_port       = 65535
  protocol      = "-1"
  cidr_blocks   = ["172.31.0.0/16"]
}

module "rds" {
  source               = "./modules/rds"
  allocated_storage    = 20
  db_engine               = "mysql"
  db_instance_class       = var.db_instance_class
  db_name                 = var.db_name
  db_username             = var.db_username
  db_password             = var.db_password
  db_parameter_group_name = var.db_parameter_group_name
  security_group_id    = module.security_group.security_group_id
  db_subnet_group_name = var.db_subnet_group_name
}

