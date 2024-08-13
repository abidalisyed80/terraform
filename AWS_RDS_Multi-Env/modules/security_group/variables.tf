variable "sg_name" {
  type        = string
  description = "The name of the security group"
}

variable "sg_description" {
  type        = string
  description = "The description of the security group"
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID where the security group will be created"
}

variable "from_port" {
  type        = number
  description = "Starting port"
}

variable "to_port" {
  type        = number
  description = "Ending port"
}

variable "protocol" {
  type        = string
  description = "Protocol type"
}

variable "cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks allowed to access"
}
