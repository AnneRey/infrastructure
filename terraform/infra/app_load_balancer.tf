module "app_load_balancer_rampup" {
  source                    = "../modules/app_load_balancer"
  aws_lb_name               = "${var.app_load_balancer_rampup_name}"
  aws_lb_security_groups_id = ["${module.security_group_alb.aws_security_group_id}"]
  aws_lb_subnets_id         = ["${module.subnet_rampup_alb_2.aws_subnet_id}","${module.subnet_rampup_alb.aws_subnet_id}"]
}
 
