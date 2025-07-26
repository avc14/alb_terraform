resource "aws_subnet" "pub-subnet1" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.pub_subnet1_cidr
  tags                    = { Name = "public-subnet-1" }
  map_public_ip_on_launch = true
  availability_zone       = var.pub_subnet1_az
}

resource "aws_subnet" "pub-subnet2" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.pub_subnet2_cidr
  tags                    = { Name = "public-subnet-2" }
  map_public_ip_on_launch = true
  availability_zone       = var.pub_subnet2_az
}

resource "aws_subnet" "private-subnet1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet1_cidr
  tags              = { Name = "app-1-private-subnet-1" }
  availability_zone = var.private_subnet1_az
}
