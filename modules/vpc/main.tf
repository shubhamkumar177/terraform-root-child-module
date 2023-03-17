resource "aws_vpc" "pharma" {
cidr_block="10.0.0.0/16"
tags = {
Name = "pharma"
}
}

output "vpc-id" {
value = aws_vpc.pharma.id
}
