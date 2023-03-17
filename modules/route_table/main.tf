resource "aws_route_table" "rt" {
vpc_id = var.vpc-id
route {
cidr_block = "0.0.0.0/0"
gateway_id = var.igw-id
}
}

variable "igw-id" {
type = string
}

variable "vpc-id" {
type = string
}

output "route-table-id" {
value = aws_route_table.rt.id
}

