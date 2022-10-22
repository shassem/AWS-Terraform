resource "aws_subnet" "pub1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "PubSub1"
  }
}