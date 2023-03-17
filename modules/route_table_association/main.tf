resource "aws_route_table_association" "rt_ass" {
route_table_id = var.route-table-id
subnet_id = var.subnet-id-1a
}

resource "aws_route_table_association" "rt_ass2" {
route_table_id = var.route-table-id
subnet_id = var.subnet-id-1b
}

variable "subnet-id-1a" {
type = string
}

variable "subnet-id-1b" {
type = string
}

variable "route-table-id" {
type = string
}


