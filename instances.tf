# Creating a bastion instance using EC2
resource "aws_instance" "bastion" {
  ami           = var.AMImage  #Amazon Linux 2 - Kernel 5.10, SSD Volume Type (64-bit (x86))
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id= module.network.publicsub1_id
  #availability_zone= "eu-central-1a"
  vpc_security_group_ids= [module.network.ssh-sg-id]
  key_name = aws_key_pair.NewKey.key_name

  tags = {
    Name = "BastionVM"
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} is the public IP of the Bastion Instance"
  }
}

# Creating a private instance for the application using EC2
resource "aws_instance" "application" {
  ami           = var.AMImage  #Amazon Linux 2 - Kernel 5.10, SSD Volume Type (64-bit (x86))
  instance_type = "t2.micro"
  associate_public_ip_address = false
  subnet_id= module.network.privatesub1_id
  #availability_zone= "eu-central-1a"
  vpc_security_group_ids = [module.network.ssh3000-sg-id]
  key_name = aws_key_pair.NewKey.key_name

  tags = {
    Name = "AppVM"
  }
}

# Creating a new keypair
resource "aws_key_pair" "NewKey" {
    key_name = "TFKey"
    public_key = file("~/.ssh/tf-rsakey.pub")   #Enter your key file location
}