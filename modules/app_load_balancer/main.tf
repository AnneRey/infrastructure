resource "aws_lb" "aws_lb" {
  name               = "${var.aws_lb_name}"
  internal           = false
  load_balancer_type = "application"
  security_groups    = "${var.aws_lb_security_groups_id}"
  subnets            = "${var.aws_lb_subnets_id}"
  
}
