provider "aws" {
   region     = "us-east-2"

}

locals {
  staging_env = "staging"
}

resource "aws_vpc" "staging-vpc" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "${local.staging_env}-vpc-tag"
  }
}

resource "aws_subnet" "staging-subnet" {
  vpc_id = aws_vpc.staging-vpc.id
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "${local.staging_env}-subnet-tag"
  }
}

resource "aws_instance" "ec2_example" {
   
   ami           = "ami-09b90e09742640522"
   instance_type = "t2.micro"
   subnet_id = aws_subnet.staging-subnet.id
   associate_public_ip_address = true
   
   tags = {
           Name = "${local.staging_env} - Terraform EC2"
   }
}
