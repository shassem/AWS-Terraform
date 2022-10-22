resource "aws_subnet" "pr2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "PrSub2"
  }
}