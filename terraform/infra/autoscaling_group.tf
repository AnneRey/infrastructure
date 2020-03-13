module "autoscaling_group_rampup" {
  source                                    = "../modules/autoscaling_group"
  aws_autoscaling_group_name                = "${var.autoscaling_group_rampup_name}"
  aws_autoscaling_group_max_size            = "${var.autoscaling_group_rampup_max_size}"
  aws_autoscaling_group_min_size            = "${var.autoscaling_group_rampup_min_size}"
  aws_autoscaling_group_vpc_zone_identifier = ["${module.subnet_rampup_2.aws_subnet_id}", "${module.subnet_rampup_4.aws_subnet_id}"]
  aws_launch_configuration_name             = "${var.autoscaling_group_rampup_launch_name}"
  aws_launch_configuration_image_id         = "${var.instance_rampup_ami}"
  aws_launch_configuration_instance_type    = "${var.autoscaling_group_rampup_type}"
  aws_launch_configuration_security_group   = ["${module.security_group_cluster.aws_security_group_id}"]
  aws_launch_configuration_key_name         = "${module.key_pair_rampup.aws_key_pair_name}"

  
}

variable "security_group_rules_bastion_type_5000" {
  type = string
  default = "ingress"
}

variable "security_group_bastion_from_port_5000" {
  type = string
  default = "5000"
}

variable "security_group_bastion_to_port_5000" {
  type = string
  default = "5000"
}
