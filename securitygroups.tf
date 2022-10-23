resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allowing SSH"
  vpc_id      = module.network.vpc_id

  ingress {
    description = "Allowing SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.allinboundroute]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_ssh3000" {
  name        = "allow_ssh3000"
  description = "Allowing SSH and port 3000 from VPC CIDR only"
  vpc_id      = module.network.vpc_id

  ingress {
    description = "Allowing SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.cidr]
  }
  
  ingress {
    description = "Allowing HTTP"
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [var.cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh3000"
  }
}