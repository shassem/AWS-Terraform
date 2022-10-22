resource "aws_subnet" "pr1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "PrSub1"
  }
}