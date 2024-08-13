variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "subnet_count" {
  type        = number
  description = "Number of subnets"
  default     = 2
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
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
