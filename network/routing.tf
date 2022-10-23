#Applying route tables with their subnet associations (routes)

#Public Routing Table
resource "aws_route_table" "pubtable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.allinboundroute
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "PublicRoute"
  }
}

#Private Routing Table
resource "aws_route_table" "prtable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = var.allinboundroute
    gateway_id = aws_nat_gateway.MyNAT.id
  }

  tags = {
    Name = "PrivateRoute"
  }
}

#Public Routing - Subnet Associations
resource "aws_route_table_association" "public-a" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.pubtable.id
}
resource "aws_route_table_association" "public-b" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.pubtable.id
}

#Private Routing - Subnet Associations
resource "aws_route_table_association" "private-a" {
  subnet_id      = aws_subnet.pr1.id
  route_table_id = aws_route_table.prtable.id
}

resource "aws_route_table_association" "private-b" {
  subnet_id      = aws_subnet.pr2.id
  route_table_id = aws_route_table.prtable.id
}
