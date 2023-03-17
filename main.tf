module "aws_vpc" {
source = "./modules/vpc/"

}
module "aws_subnet" {
source = "./modules/subnet/"
vpc-id = module.aws_vpc.vpc-id
}

module "aws_internet_gateway"  {
source = "./modules/igw/"
vpc-id = module.aws_vpc.vpc-id
}

module "aws_route_table" {
source = "./modules/route_table"
vpc-id = module.aws_vpc.vpc-id
igw-id = module.aws_internet_gateway.igw-id

}

module "aws_route_table_association"  {
source = "./modules/route_table_association"
subnet-id-1a = module.aws_subnet.subnet-id-1a
subnet-id-1b = module.aws_subnet.subnet-id-1b
route-table-id = module.aws_route_table.route-table-id
}
