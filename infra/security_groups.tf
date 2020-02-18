module "security_groups_alb_rampup" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_groups_alb_rampup_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}

module "security_groups_cluster_rampup" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_groups_cluster_rampup_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}

module "security_groups_bastion_rampup" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_groups_bastion_rampup_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}

module "security_groups_rds_rampup" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_groups_RDS_rampup_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}

module "security_groups_kube_rampup" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_groups_kube_rampup_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}
