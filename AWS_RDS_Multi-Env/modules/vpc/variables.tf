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

