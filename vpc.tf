#AWS Virtual Private Cloud (VPC)

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "testVPC"
  }
}