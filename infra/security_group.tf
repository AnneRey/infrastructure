module "security_group_alb" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_group_alb_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}

module "security_group_cluster" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_group_cluster_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}

module "security_group_bastion" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_group_bastion_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}

module "security_group_rds" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_group_rds_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}

module "security_group_kubernetes" {
  source = "../modules/security_group"
  aws_security_group_name = "${var.security_group_kubernetes_name}"
  aws_security_group_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
}







