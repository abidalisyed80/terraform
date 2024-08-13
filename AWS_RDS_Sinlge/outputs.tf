output "vpc_id" {
  value = module.vpc.vpc_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "db_instance_id" {
  value = module.rds.db_instance_id
}

output "db_instance_endpoint" {
  value = module.rds.db_instance_endpoint
}

