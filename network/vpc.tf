#AWS Virtual Private Cloud (VPC)

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr

  tags = {
    Name = "testVPC"
  }
}