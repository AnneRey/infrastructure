module "route_table_rampup_nat_instance" {
  source                          = "../modules/routetable_instance"
  aws_route_table_vpc_id_instance = "${module.vpc_rampup.aws_vpc_id}"
  aws_route_table_cidr_block      = "${var.route_table_rampup_cidr_block}"
  aws_route_table_instance_id     = "${module.instance_rampup_nat.aws_instance_id}"
}
