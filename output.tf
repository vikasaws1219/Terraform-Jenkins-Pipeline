output "public_ip" {
value = aws_instance.ec2_example.public_ip
}

output "vpc_id" {
    value = aws_vpc.staging-vpc.id
}