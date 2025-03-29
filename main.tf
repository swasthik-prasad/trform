
resource "aws_vpc" "swasthik_vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.vpc_tenancy

  tags = {
    Name = var.vpc_name  
  }
}


resource "aws_subnet" "swasthik_subnet" {
  vpc_id            = aws_vpc.swasthik_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = var.subnet_name
  }
}