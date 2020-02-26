
module "instance_rampup_bastion" {
  source                      = "../modules/instance"
  aws_instance_ami            = "${var.instance_rampup_ami}"
  aws_instance_type           = "${var.instance_rampup_type}"
  aws_instance_subnet_id      = "${module.subnet_rampup.aws_subnet_id}"
  aws_instance_name           = "${var.instance_rampup_name_bastion}"
  aws_instance_key_name       = "${module.key_pair_rampup.aws_key_pair_name}"
  aws_instance_security_group = ["${module.security_group_bastion.aws_security_group_id}"]
  aws_instance_public_ip      = "true"
}

module "instance_rampup_nat" {
  source                      = "../modules/instance"
  aws_instance_ami            = "${var.instance_rampup_ami_nat}"
  aws_instance_type           = "${var.instance_rampup_type}"
  aws_instance_subnet_id      = "${module.subnet_rampup_3.aws_subnet_id}"
  aws_instance_name           = "${var.instance_rampup_name_nat}"
  aws_instance_key_name       = "${module.key_pair_rampup.aws_key_pair_name}"
  aws_instance_security_group = ["${module.security_group_nat.aws_security_group_id}"]
  aws_instance_public_ip      = "true"
  aws_instance_dest_check     = "false"
}

module "instance_rampup_kube" {
  source                      = "../modules/instance"
  aws_instance_ami            = "${var.instance_rampup_ami}"
  aws_instance_type           = "${var.instance_rampup_kube_type}"
  aws_instance_subnet_id      = "${module.subnet_rampup_5.aws_subnet_id}"
  aws_instance_name           = "${var.instance_rampup_kube_name}"
  aws_instance_key_name       = "${module.key_pair_rampup.aws_key_pair_name}"
  aws_instance_security_group = ["${module.security_group_kubernetes.aws_security_group_id}"]
}

