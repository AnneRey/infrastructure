module "instance_rampup" {
  source = "../modules/instance"
  aws_instance_ami = "${var.instance_rampup_ami}"
  aws_instance_type = "${var.instance_rampup_type}"
  aws_instance_subnet_id = "${module.subnet_rampup.aws_subnet_id}"
  aws_instance_name = "${var.instance_rampup_name}"
  
}

module "instance_rampup_2" {
  source = "../modules/instance"
  aws_instance_ami = "${var.instance_rampup_ami}"
  aws_instance_type = "${var.instance_rampup_type}"
  aws_instance_subnet_id = "${module.subnet_rampup_3.aws_subnet_id}"
  aws_instance_name = "${var.instance_rampup_name_2}"
  
}

module "instance_rampup_3" {
  source = "../modules/instance"
  aws_instance_ami = "${var.instance_rampup_ami}"
  aws_instance_type = "${var.instance_rampup_type}"
  aws_instance_subnet_id = "${module.subnet_rampup_2.aws_subnet_id}"
  aws_instance_name = "${var.instance_rampup_name_3}"
  
}

module "instance_rampup_4" {
  source = "../modules/instance"
  aws_instance_ami = "${var.instance_rampup_ami}"
  aws_instance_type = "${var.instance_rampup_type}"
  aws_instance_subnet_id = "${module.subnet_rampup_4.aws_subnet_id}"
  aws_instance_name = "${var.instance_rampup_name_4}"
  
}

module "instance_rampup_bastion" {
  source = "../modules/instance"
  aws_instance_ami = "${var.instance_rampup_ami}"
  aws_instance_type = "${var.instance_rampup_type}"
  aws_instance_subnet_id = "${module.subnet_rampup.aws_subnet_id}"
  aws_instance_name = "${var.instance_rampup_name_bastion}"
  
}

module "isntance_rampup_nat" {
  source = "../modules/instance"
  aws_instance_ami = "${var.instance_rampup_ami_nat}"
  aws_instance_type = "${var.instance_rampup_type}"
  aws_instance_subnet_id = "${module.subnet_rampup_3.aws_subnet_id}"
  aws_instance_name = "${var.instance_rampup_name_nat}"
  
}
