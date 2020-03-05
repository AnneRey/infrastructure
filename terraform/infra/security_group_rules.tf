module "security_group_rules_alb_ingress" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_alb_type}"
  aws_security_group_rule_from_port         = "${var.security_group_alb_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_alb_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_alb_protocol}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_alb_blocks}"
  aws_security_group_rule_security_group_id = "${module.security_group_alb.aws_security_group_id}"
}

module "security_group_rules_cluster_ingress_3030" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.security_group_rules_cluster_ingress_3030_type}"
  aws_security_group_rule_from_port                = "${var.security_group_rules_cluster_ingress_3030_from_port}"
  aws_security_group_rule_to_port                  = "${var.security_group_rules_cluster_ingress_3030_to_port}"
  aws_security_group_rule_protocol                 = "${var.security_group_rules_cluster_ingress_3030_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_alb.aws_security_group_id}"
}

module "security_group_rules_cluster_ingress_22" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.security_group_rules_cluster_ingress_22_type}"
  aws_security_group_rule_from_port                = "${var.security_group_rules_cluster_ingress_22_from_port}"
  aws_security_group_rule_to_port                  = "${var.security_group_rules_cluster_ingress_22_to_port}"
  aws_security_group_rule_protocol                 = "${var.security_group_rules_cluster_ingress_22_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_bastion.aws_security_group_id}"

}

module "security_group_rules_cluster_ingress_self" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.security_group_rules_cluster_ingress_self_type}"
  aws_security_group_rule_from_port                = "${var.security_group_rules_cluster_ingress_self_from_port}"
  aws_security_group_rule_to_port                  = "${var.security_group_rules_cluster_ingress_self_to_port}"
  aws_security_group_rule_protocol                 = "${var.security_group_rules_cluster_ingress_self_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_cluster.aws_security_group_id}"
}

module "security_group_rules_cluster_kube_tcp" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.security_group_rules_cluster_ingress_kube_tcp_type}"
  aws_security_group_rule_from_port                = "${var.security_group_rules_cluster_ingress_kube_tcp_from_port}"
  aws_security_group_rule_to_port                  = "${var.security_group_rules_cluster_ingress_kube_tcp_to_port}"
  aws_security_group_rule_protocol                 = "${var.security_group_rules_cluster_ingress_kube_tcp_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_kubernetes.aws_security_group_id}"
}

module "security_group_rules_cluster_kube_udp" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.security_group_rules_cluster_ingress_kube_udp_type}"
  aws_security_group_rule_from_port                = "${var.security_group_rules_cluster_ingress_kube_udp_from_port}"
  aws_security_group_rule_to_port                  = "${var.security_group_rules_cluster_ingress_kube_udp_to_port}"
  aws_security_group_rule_protocol                 = "${var.security_group_rules_cluster_ingress_kube_udp_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_kubernetes.aws_security_group_id}"
}



module "security_group_rules_bastion_local" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_bastion_type}"
  aws_security_group_rule_from_port         = "${var.security_group_bastion_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_bastion_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_bastion_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_bastion.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_bastion_cidr_blocks}"
}

module "security_group_rules_bastion_8080" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_bastion_type}"
  aws_security_group_rule_from_port         = "${var.security_group_bastion_from_port_8080}"
  aws_security_group_rule_to_port           = "${var.security_group_bastion_to_port_8080}"
  aws_security_group_rule_protocol          = "${var.security_group_bastion_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_bastion.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_bastion_cidr_blocks}"
}

module "security_group_rules_rds" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.security_group_rules_rds_type}"
  aws_security_group_rule_from_port                = "${var.security_group_rules_rds_from_port}"
  aws_security_group_rule_to_port                  = "${var.security_group_rules_rds_to_port}"
  aws_security_group_rule_protocol                 = "${var.security_group_rules_rds_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_rds.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_cluster.aws_security_group_id}"
}

module "security_group_rules_kube" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.security_group_rules_kube_type}"
  aws_security_group_rule_from_port                = "${var.security_group_rules_kube_from_port}"
  aws_security_group_rule_to_port                  = "${var.security_group_rules_kube_to_port}"
  aws_security_group_rule_protocol                 = "${var.security_group_rules_kube_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_kubernetes.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_bastion.aws_security_group_id}"
}

module "security_group_rules_nat_cluster" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.aws_security_group_rules_nat_cluster_type}"
  aws_security_group_rule_from_port                = "${var.aws_security_group_rules_nat_cluster_from_port}"
  aws_security_group_rule_to_port                  = "${var.aws_security_group_rules_nat_cluster_to_port}"
  aws_security_group_rule_protocol                 = "${var.aws_security_group_rules_nat_cluster_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_nat.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_cluster.aws_security_group_id}"
}

module "security_group_rules_nat_bastion" {
  source                                           = "../modules/security_group_rules"
  aws_security_group_rule_security_group_id_flag   = "true"
  aws_security_group_rule_type                     = "${var.aws_security_group_rules_nat_bastion_type}"
  aws_security_group_rule_from_port                = "${var.aws_security_group_rules_nat_bastion_from_port}"
  aws_security_group_rule_to_port                  = "${var.aws_security_group_rules_nat_bastion_to_port}"
  aws_security_group_rule_protocol                 = "${var.aws_security_group_rules_nat_bastion_protocol}"
  aws_security_group_rule_security_group_id        = "${module.security_group_nat.aws_security_group_id}"
  aws_security_group_rule_security_group_source_id = "${module.security_group_bastion.aws_security_group_id}"
}

module "security_group_rules_nat_outbound" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_nat_outbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_rules_nat_outbound_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_rules_nat_outbound_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_rules_nat_outbound_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_nat.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_rules_nat_outbound_cidr_blocks}"
}

module "security_group_rules_nat_ingress_80" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_nat_ingress_type}"
  aws_security_group_rule_from_port         = "${var.security_group_rules_nat_ingress_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_rules_nat_ingress_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_rules_nat_ingress_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_nat.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_rules_nat_ingress_cidr_blocks}"

}


module "security_group_rules_bastion_outbound" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_bastion_outbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_bastion_outbound_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_bastion_outbound_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_bastion_outbound_protocol}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_bastion_outbound_blocks}"
  aws_security_group_rule_security_group_id = "${module.security_group_bastion.aws_security_group_id}"
}

module "security_group_rules_nat_outbound_tcp" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_nat_outbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_rules_nat_outbound_tcp_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_rules_nat_outbound_tcp_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_rules_nat_outbound_tcp_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_nat.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_rules_nat_outbound_tcp_cidr_blocks}"
}

module "security_group_rules_cluster_outbound" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_cluster_outbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_cluster_outbound_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_cluster_outbound_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_cluster_outbound_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_cluster.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_cluster_outbound_cidr_blocks}"
}

module "security_group_rules_kube_outbound" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_kube_outbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_rules_kube_outbound_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_rules_kube_outbound_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_rules_kube_outbound_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_kubernetes.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_rules_kube_outbound_cidr_block}"
}

module "security_group_rules_alb_outbound" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_alb_outbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_alb_outbound_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_alb_outbound_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_alb_outbound_protocol}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_alb_outbound_blocks}"
  aws_security_group_rule_security_group_id = "${module.security_group_alb.aws_security_group_id}"
}

module "security_group_rules_rds_outbound" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rds_outbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_rds_outbound_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_rds_outbound_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_rds_outbound_protocol}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_rds_outbound_blocks}"
  aws_security_group_rule_security_group_id = "${module.security_group_rds.aws_security_group_id}"
}

module "security_group_rules_kube_inbound_tcp" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_kube_inbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_rules_kube_inbound_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_rules_kube_inbound_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_rules_kube_inbound_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_kubernetes.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_rules_kube_inbound_cidr_block}"
}

module "security_group_rules_kube_inbound_udp" {
  source                                    = "../modules/security_group_rules"
  aws_security_group_rule_cidr_flag         = "true"
  aws_security_group_rule_type              = "${var.security_group_rules_kube_inbound_type}"
  aws_security_group_rule_from_port         = "${var.security_group_rules_kube_inbound_from_port}"
  aws_security_group_rule_to_port           = "${var.security_group_rules_kube_inbound_to_port}"
  aws_security_group_rule_protocol          = "${var.security_group_rules_kube_inbound_udp_protocol}"
  aws_security_group_rule_security_group_id = "${module.security_group_kubernetes.aws_security_group_id}"
  aws_security_group_rule_cidr_blocks       = "${var.security_group_rules_kube_inbound_cidr_block}"
}