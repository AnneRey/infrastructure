module "target_group_attachment_rampup" {
  source                                          = "../modules/target_group_attachment"
  aws_lb_target_group_attachment_arn_target_group = "${module.target_group_rampup.alb_target_group_arn}"
  aws_lb_target_group_attachment_target_id        = "${module.instance_rampup_kube.aws_instance_id}"
  aws_lb_target_group_attachment_target_port      = "${var.target_group_attachment_target_port}"
}
