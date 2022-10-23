#Gateways

#Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "MyIGW"
  }
}

#NAT Gateway
resource "aws_nat_gateway" "MyNAT" {
  allocation_id = aws_eip.myeip.id
  subnet_id     = aws_subnet.pub1.id

  tags = {
    Name = "gwNAT"
  }
}

#Allocating Elastic IP
resource "aws_eip" "myeip" {
  vpc = true
}

