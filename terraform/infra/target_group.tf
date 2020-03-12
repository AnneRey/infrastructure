module "target_group_rampup" {
  source                        = "../modules/target_group"
  aws_alb_target_group_port     = "${var.target_group_port}"
  aws_alb_target_group_protocol = "${var.target_group_protocol}"
  aws_alb_target_group_vpc_id   = "${module.vpc_rampup.aws_vpc_id}"
  aws_alb_target_group_name     = "${var.target_group_name}"
}
