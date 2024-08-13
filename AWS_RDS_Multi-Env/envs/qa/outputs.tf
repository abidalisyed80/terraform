output "vpc_id" {
  description = "The ID of the VPC for the QA environment"
  value       = module.vpc.vpc_id
}

output "security_group_id" {
  description = "The ID of the security group for the QA environment"
  value       = module.security_group.security_group_id
}

output "rds_endpoint" {
  description = "The endpoint of the RDS instance for the QA environment"
  value       = module.rds.rds_endpoint
}

output "rds_instance_id" {
  description = "The ID of the RDS instance for the QA environment"
  value       = aws_db_instance.rds.id
}

output "subnet_ids" {
  description = "The IDs of the subnets in the QA environment"
  value       = module.vpc.subnet_ids
}

