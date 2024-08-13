resource "aws_vpc" "rds" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "public" {
  count             = var.subnet_count
  vpc_id            = aws_vpc.rds.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, count.index)
  map_public_ip_on_launch = true
  availability_zone = element(var.availability_zones, count.index)
}
