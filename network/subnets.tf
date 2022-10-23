#Applying: 2 public subnets, 2 private subnets

#First Public Subnet
resource "aws_subnet" "pub1" {    
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_1_CIDR
  availability_zone = "${var.regionn}a"

  tags = {
    Name = "PubSub1"
  }
}

#Second Public Subnet
resource "aws_subnet" "pub2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.public_2_CIDR
  availability_zone = "${var.regionn}c"

  tags = {
    Name = "PubSub2"
  }
}

#First Private Subnet
resource "aws_subnet" "pr1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_1_CIDR
  availability_zone = "${var.regionn}a"

  tags = {
    Name = "PrSub1"
  }
}

#Second Private Subnet
resource "aws_subnet" "pr2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.private_2_CIDR
  availability_zone = "${var.regionn}c"

  tags = {
    Name = "PrSub2"
  }
}