module "route_table_rampup" {
  source                     = "../modules/routetable"
  aws_route_table_vpc_id     = "${module.vpc_rampup.aws_vpc_id}"
  aws_route_table_cidr_block = "${var.route_table_rampup_cidr_block}"
  aws_route_table_gateway_id = "${module.internet_gateway_rampup.aws_internet_gateway_id}"
}
