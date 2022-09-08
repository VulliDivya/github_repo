resource "aws_vpc" "VPC01" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "BatchXV VPC"
  }
}