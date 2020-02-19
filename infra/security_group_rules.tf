module "security_group_rules_alb_ingress" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "${var.security_group_alb_flag}"
  aws_security_group_rule_cidr_type         = "${var.security_group_alb_type}"
  aws_security_group_rule_cidr_from_port    = "${var.security_group_alb_from_port}"
  aws_security_group_rule_cidr_to_port      = "${var.security_group_alb_to_port}"
  aws_security_group_rule_cidr_protocol     = "${var.security_group_alb_protocol}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_alb_blocks}"
  aws_security_group_rule_security_group_id = "${module.security_group_alb.aws_security_group_id}"
}

module "security_group_rules_cluster_ingress_3030" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "${var.security_group_rules_cluster_flag}"
  aws_security_group_rule_security_group_type      = "${var.security_group_rules_cluster_ingress_3030_type}"
  aws_security_group_rule_security_group_port      = "${var.security_group_rules_cluster_ingress_3030_from_port}"
  aws_security_group_rule_security_group_to_port   = "${var.security_group_rules_cluster_ingress_3030_to_port}"
  aws_security_group_rule_security_group_protocol  = "${var.security_group_rules_cluster_ingress_3030_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_alb.aws_security_group_id}"
}

module "security_group_rules_cluster_ingress_22" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "${var.security_group_rules_cluster_flag}"
  aws_security_group_rule_security_group_type      = "${var.security_group_rules_cluster_ingress_22_type}"
  aws_security_group_rule_security_group_port      = "${var.security_group_rules_cluster_ingress_22_from_port}"
  aws_security_group_rule_security_group_to_port   = "${var.security_group_rules_cluster_ingress_22_to_port}"
  aws_security_group_rule_security_group_protocol  = "${var.security_group_rules_cluster_ingress_22_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_bastion.aws_security_group_id}"

}

module "security_group_rules_cluster_ingress_self" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "${var.security_group_rules_cluster_flag}"
  aws_security_group_rule_security_group_type      = "${var.security_group_rules_cluster_ingress_self_type}"
  aws_security_group_rule_security_group_port      = "${var.security_group_rules_cluster_ingress_self_from_port}"
  aws_security_group_rule_security_group_to_port   = "${var.security_group_rules_cluster_ingress_self_to_port}"
  aws_security_group_rule_security_group_protocol  = "${var.security_group_rules_cluster_ingress_self_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_cluster.aws_security_group_id}"
}


