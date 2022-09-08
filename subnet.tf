//creating first subnet//
resource "aws_subnet" "subnet01" {
  vpc_id                  = aws_vpc.VPC01.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1a"

  tags = {
    Name = "FirstXV subnet"
  }
}

//creating second subnet//
resource "aws_subnet" "subnet02" {
  vpc_id                  = aws_vpc.VPC01.id
  cidr_block              = var.subnet2_cidr
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1b"

  tags = {
    Name = "secondXV subnet"
  }
}

/* creating 2 subnets and both will acts of public subnets*/