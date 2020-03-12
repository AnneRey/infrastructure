resource "aws_alb_listener" "aws_alb_listener" {
    load_balancer_arn = "${var.aws_lb_listener_load_balancer_arn}"
    port              = "${var.aws_lb_listener_port}"

  default_action {
    type             = "forward"
    target_group_arn = "${var.aws_alb_listener_target_group_arn}"
  }
}
