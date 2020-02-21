module "subnet_rampup" {
  source            = "../modules/subnet"
  aws_subnet_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
  aws_subnet_az     = "${var.subnet_rampup_az}"
  aws_subnet_cidr   = "${var.subnet_rampup_cidr_block}"
  aws_subnet_name   = "${var.subnet_rampup_subnet_name}"
}

module "subnet_rampup_2" {
  source            = "../modules/subnet"
  aws_subnet_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
  aws_subnet_az     = "${var.subnet_rampup_az}"
  aws_subnet_cidr   = "${var.subnet_rampup_cidr_block_2}"
  aws_subnet_name   = "${var.subnet_rampup_subnet_name_2}"
}

module "subnet_rampup_3" {
  source            = "../modules/subnet"
  aws_subnet_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
  aws_subnet_az     = "${var.subnet_rampup_az_2}"
  aws_subnet_cidr   = "${var.subnet_rampup_cidr_block_3}"
  aws_subnet_name   = "${var.subnet_rampup_subnet_name_3}"
}

module "subnet_rampup_4" {
  source            = "../modules/subnet"
  aws_subnet_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
  aws_subnet_az     = "${var.subnet_rampup_az_2}"
  aws_subnet_cidr   = "${var.subnet_rampup_cidr_block_4}"
  aws_subnet_name   = "${var.subnet_rampup_subnet_name_4}"
}

module "subnet_rampup_5" {
  source            = "../modules/subnet"
  aws_subnet_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
  aws_subnet_az     = "${var.subnet_rampup_az_3}"
  aws_subnet_cidr   = "${var.subnet_rampup_cidr_block_5}"
  aws_subnet_name   = "${var.subnet_rampup_subnet_name_5}"
}

