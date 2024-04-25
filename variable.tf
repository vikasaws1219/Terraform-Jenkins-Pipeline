variable "region" {
    description = "region variable"
    type = string
    default = "us-east-2"
}

variable "instance_type" {
    description = "Instance type variable"
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    default = "ami-09b90e09742640522"
}

