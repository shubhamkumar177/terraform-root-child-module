resource "aws_subnet" "public-1a" {
vpc_id = var.vpc-id
cidr_block = "10.0.0.0/24"
availability_zone = "ap-south-1a"
tags = {
Name = "public-1a"
}
}
output "subnet-id-1a" {
value = aws_subnet.public-1a.id
}

resource "aws_subnet" "public-1b" {
vpc_id = var.vpc-id
cidr_block = "10.0.1.0/24"
availability_zone = "ap-south-1b"
tags = {
Name = "public-1b"
}
}

output "subnet-id-1b" {
value = aws_subnet.public-1b.id
}

variable "vpc-id" {
type = string
}
