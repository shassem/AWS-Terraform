# To pass the needed values to the root module

output "vpc_id" {
    value = aws_vpc.myvpc.id
}

output "publicsub1_id" {
    value = aws_subnet.pub1.id
}

output "privatesub1_id" {
    value = aws_subnet.pr1.id
}

output "privatesub2_id" {
    value = aws_subnet.pr2.id
}

output "ssh-sg-id" {
    value = aws_security_group.allow_ssh.id
}

output "ssh3000-sg-id" {
    value = aws_security_group.allow_ssh3000.id
}