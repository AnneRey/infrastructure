module "security_group_rules_alb_ingress" {
  source                                         = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag = "${var.security_group_alb_group_flag}"
  aws_security_group_rule_cidr_flag              = "${var.security_group_alb_flag}"
  aws_security_group_rule_cidr_type              = "${var.security_group_alb_type}"
  aws_security_group_rule_cidr_from_port         = "${var.security_group_alb_from_port}"
  aws_security_group_rule_cidr_to_port           = "${var.security_group_alb_to_port}"
  aws_security_group_rule_cidr_protocol          = "${var.security_group_alb_protocol}"
  aws_security_group_rule_cidr_blocks            = "${var.security_group_alb_blocks}"
  aws_security_group_rule_security_group_id      = "${module.security_group_alb.aws_security_group_id}"
}

module "security_group_rules_cluster_ingress_3030" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "${var.security_group_rules_cluster_flag}"
  aws_security_group_rule_cidr_flag                = "${var.security_group_rules_cluster_cidr_flag}"
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
  aws_security_group_rule_cidr_flag                = "${var.security_group_rules_cluster_cidr_flag}"
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
  aws_security_group_rule_cidr_flag                = "${var.security_group_rules_cluster_cidr_flag}"
  aws_security_group_rule_security_group_type      = "${var.security_group_rules_cluster_ingress_self_type}"
  aws_security_group_rule_security_group_port      = "${var.security_group_rules_cluster_ingress_self_from_port}"
  aws_security_group_rule_security_group_to_port   = "${var.security_group_rules_cluster_ingress_self_to_port}"
  aws_security_group_rule_security_group_protocol  = "${var.security_group_rules_cluster_ingress_self_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_cluster.aws_security_group_id}"
}

module "security_group_rules_cluster_kube_tcp" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "${var.security_group_rules_cluster_flag}"
  aws_security_group_rule_cidr_flag                = "${var.security_group_rules_cluster_cidr_flag}"
  aws_security_group_rule_security_group_type      = "${var.security_group_rules_cluster_ingress_kube_tcp_type}"
  aws_security_group_rule_security_group_port      = "${var.security_group_rules_cluster_ingress_kube_tcp_from_port}"
  aws_security_group_rule_security_group_to_port   = "${var.security_group_rules_cluster_ingress_kube_tcp_to_port}"
  aws_security_group_rule_security_group_protocol  = "${var.security_group_rules_cluster_ingress_kube_tcp_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_kubernetes.aws_security_group_id}"
}

module "security_group_rules_cluster_kube_udp" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "${var.security_group_rules_cluster_flag}"
  aws_security_group_rule_cidr_flag                = "${var.security_group_rules_cluster_cidr_flag}"
  aws_security_group_rule_security_group_type      = "${var.security_group_rules_cluster_ingress_kube_udp_type}"
  aws_security_group_rule_security_group_port      = "${var.security_group_rules_cluster_ingress_kube_udp_from_port}"
  aws_security_group_rule_security_group_to_port   = "${var.security_group_rules_cluster_ingress_kube_udp_to_port}"
  aws_security_group_rule_security_group_protocol  = "${var.security_group_rules_cluster_ingress_kube_udp_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_kubernetes.aws_security_group_id}"
}



module "security_group_rules_bastion_local" {
  source                                         = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag = "${var.security_group_rules_bastion_group_flag}"
  aws_security_group_rule_cidr_flag              = "${var.security_group_rules_bastion_flag}"
  aws_security_group_rule_cidr_type              = "${var.security_group_rules_bastion_type}"
  aws_security_group_rule_cidr_from_port         = "${var.security_group_bastion_from_port}"
  aws_security_group_rule_cidr_to_port           = "${var.security_group_bastion_to_port}"
  aws_security_group_rule_cidr_protocol          = "${var.security_group_bastion_protocol}"
  aws_security_group_rule_security_group_cidr_id = "${module.security_group_bastion.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks            = "${var.security_group_bastion_cidr_blocks}"
}

module "security_group_rules_rds" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "${var.security_group_rules_rds_group_flag}"
  aws_security_group_rule_cidr_flag                = "${var.security_group_rules_rds_cidr_flag}"
  aws_security_group_rule_security_group_type      = "${var.security_group_rules_rds_type}"
  aws_security_group_rule_security_group_port      = "${var.security_group_rules_rds_from_port}"
  aws_security_group_rule_security_group_to_port   = "${var.security_group_rules_rds_to_port}"
  aws_security_group_rule_security_group_protocol  = "${var.security_group_rules_rds_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_rds.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_cluster.aws_security_group_id}"
}

module "security_group_rules_kube" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "${var.security_group_rules_kube_group_flag}"
  aws_security_group_rule_cidr_flag                = "${var.security_group_rules_kube_cidr_flag}"
  aws_security_group_rule_security_group_type      = "${var.security_group_rules_kube_type}"
  aws_security_group_rule_security_group_port      = "${var.security_group_rules_kube_from_port}"
  aws_security_group_rule_security_group_to_port   = "${var.security_group_rules_kube_to_port}"
  aws_security_group_rule_security_group_protocol  = "${var.security_group_rules_kube_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_kubernetes.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_bastion.aws_security_group_id}"
}



