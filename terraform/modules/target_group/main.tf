resource "aws_alb_target_group" "aws_alb_target_group" {

  port     = "${var.aws_alb_target_group_port}"
  protocol = "${var.aws_alb_target_group_protocol}"
  vpc_id   = "${var.aws_alb_target_group_vpc_id}"

  tags = {
    Name          = "${var.aws_alb_target_group_name}"
    created_by    = "Ana Rey"
    creation_date = "13/02/2020"
    project_name  = "FINAL_RAMPUP"
    stop          = "stop"
  }
}

