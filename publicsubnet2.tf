resource "aws_subnet" "pub2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "PubSub2"
  }
}