module "route_table_association_nat" {
  source                               = "../modules/route_table_association"
  aws_route_table_association_subnet   = "${module.subnet_rampup_3.aws_subnet_id}"
  aws_route_table_association_id_route = "${module.route_table_rampup_public_subnet.aws_route_table_id_gtw}"
}

module "route_table_association_bastion" {
  source                               = "../modules/route_table_association"
  aws_route_table_association_subnet   = "${module.subnet_rampup.aws_subnet_id}"
  aws_route_table_association_id_route = "${module.route_table_rampup_public_subnet.aws_route_table_id_gtw}"
}

module "route_table_association_nat_subnet2" {
  source                               = "../modules/route_table_association"
  aws_route_table_association_subnet   = "${module.subnet_rampup_2.aws_subnet_id}"
  aws_route_table_association_id_route = "${module.route_table_rampup_nat_instance.aws_route_table_id_instance}"
}

module "route_table_association_nat_subnet4" {
  source                               = "../modules/route_table_association"
  aws_route_table_association_subnet   = "${module.subnet_rampup_4.aws_subnet_id}"
  aws_route_table_association_id_route = "${module.route_table_rampup_nat_instance.aws_route_table_id_instance}"
}

module "route_table_association_nat_subnet5" {
  source                               = "../modules/route_table_association"
  aws_route_table_association_subnet   = "${module.subnet_rampup_5.aws_subnet_id}"
  aws_route_table_association_id_route = "${module.route_table_rampup_nat_instance.aws_route_table_id_instance}"
}

module "route_table_association_alb_1" {
  source                               = "../modules/route_table_association"
  aws_route_table_association_subnet   = "${module.subnet_rampup_alb.aws_subnet_id}"
  aws_route_table_association_id_route = "${module.route_table_rampup_public_subnet.aws_route_table_id_gtw}"
}





