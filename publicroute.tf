resource "aws_route_table" "pubtable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "PublicRoute"
  }
}

resource "aws_route_table_association" "public-a" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.pubtable.id
}
resource "aws_route_table_association" "public-b" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.pubtable.id
}
