resource "aws_internet_gateway" "igw" {
vpc_id = var.vpc-id
tags = {
Name = "igw"
}

}

variable "vpc-id" {
type = string
}

output "igw-id" {
value = aws_internet_gateway.igw.id
}
