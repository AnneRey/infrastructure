module "vpc_rampup" {
  source             = "../modules/vpc"
  aws_vpc_cidr_block = "${var.vpc_rampup_cidr_block}"
  aws_vpc_name_vpc   = "${var.vpc_rampup_vpc_name}"
}


