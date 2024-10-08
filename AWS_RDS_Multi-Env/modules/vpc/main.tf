resource "aws_vpc" "rds_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "public" {
  count             = var.subnet_count
  vpc_id            = aws_vpc.rds_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, count.index)
  map_public_ip_on_launch = true
  availability_zone = element(var.availability_zones, count.index)
}

output "vpc_id" {
  value = aws_vpc.rds_vpc.id
}

