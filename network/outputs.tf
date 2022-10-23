output "vpc_id" {
    value = aws_vpc.myvpc.id
}

output "publicsub1_id" {
    value = aws_subnet.pub1.id
}

output "privatesub1_id" {
    value = aws_subnet.pr1.id
}