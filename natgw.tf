resource "aws_nat_gateway" "MyNAT" {
  allocation_id = aws_eip.myeip.id
  subnet_id     = aws_subnet.pub1.id

  tags = {
    Name = "gwNAT"
  }
}

resource "aws_eip" "myeip" {
  vpc              = true
}