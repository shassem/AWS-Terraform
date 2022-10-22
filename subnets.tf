#Applying: 2 public subnets, 2 private subnets

#First Public Subnet
resource "aws_subnet" "pub1" {    
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "PubSub1"
  }
}

#Second Public Subnet
resource "aws_subnet" "pub2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "PubSub2"
  }
}

#First Private Subnet
resource "aws_subnet" "pr1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "PrSub1"
  }
}

#Second Private Subnet
resource "aws_subnet" "pr2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "PrSub2"
  }
}