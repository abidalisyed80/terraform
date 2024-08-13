variable "aws_region" {
  type        = string
  description = "The AWS region to deploy to"
}

variable "db_subnet_group_name" {
  type        = string
  description = "The DB subnet group name"
}

variable "db_name" {
  type        = string
  description = "The name of the RDS database"
}

variable "db_username" {
  type        = string
  description = "The username for the RDS database"
}

variable "db_password" {
  type        = string
  description = "The password for the RDS database"
}

variable "db_instance_class" {
  type        = string
  description = "The instance class/type for the RDS instance"
}

variable "db_parameter_group_name" {
  type        = string
  description = "The instance class/type for the RDS instance"
}


