resource "aws_route_table" "prtable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.MyNAT.id
  }

  tags = {
    Name = "PrivateRoute"
  }
}

resource "aws_route_table_association" "private-a" {
  subnet_id      = aws_subnet.pr1.id
  route_table_id = aws_route_table.prtable.id
}

resource "aws_route_table_association" "private-b" {
  subnet_id      = aws_subnet.pr2.id
  route_table_id = aws_route_table.prtable.id
}
