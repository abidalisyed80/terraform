resource "aws_db_instance" "rds" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  instance_class       = var.instance_class
  name                 = var.name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name = var.db_subnet_group_name
  skip_final_snapshot  = var.skip_final_snapshot
}

output "rds_endpoint" {
  value = aws_db_instance.rds.endpoint
}

