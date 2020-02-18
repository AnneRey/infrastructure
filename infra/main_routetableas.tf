module "route_table_association_main_rampup" {
  source = "../modules/main_routetableas"
  aws_main_route_table_association_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
  aws_main_route_table_association_route_table_id = "${module.route_table_rampup.aws_route_table_id}"
}
