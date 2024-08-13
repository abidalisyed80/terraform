variable "allocated_storage" {
  type        = number
  description = "The size of the DB"
}

variable "db_engine" {
  type        = string
  description = "The database engine to use"
}

variable "db_instance_class" {
  type        = string
  description = "The instance type of the RDS instance"
}

variable "db_name" {
  type        = string
  description = "The name of the database"
}

variable "db_username" {
  type        = string
  description = "Username for the database"
}

variable "db_password" {
  type        = string
  description = "Password for the database"
}

variable "db_parameter_group_name" {
  type        = string
  description = "Name of the DB parameter group"
}

variable "security_group_id" {
  type        = string
  description = "Security group to associate with the RDS instance"
}

variable "db_subnet_group_name" {
  type        = string
  description = "The DB subnet group name"
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Skip final snapshot on deletion"
  default     = true
}

