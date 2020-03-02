resource "aws_lb" "aws_lb" {
  internal           = false
  load_balancer_type = "application"
  security_groups    = "${var.aws_lb_security_groups_id}"
  subnets            = "${var.aws_lb_subnets_id}"

  tags = {
    Name          = "${var.aws_lb_name}"
    created_by    = "Ana Rey"
    creation_date = "13/02/2020"
    project_name  = "FINAL_RAMPUP"
    stop          = "stop"
  }

}
