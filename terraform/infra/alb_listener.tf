module "alb_listener_rampup_80" {
    source                            = "../modules/loadbalancer_listener"
    aws_lb_listener_load_balancer_arn = "${module.app_load_balancer_rampup.aws_lb_arn}"
    aws_lb_listener_port              = "80"
    aws_alb_listener_target_group_arn = "${module.target_group_rampup.alb_target_group_arn}"
}
