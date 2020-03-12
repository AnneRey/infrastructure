resource "aws_lb_target_group_attachment" "aws_lb_target_group_attachment" {
  target_group_arn = "${var.aws_lb_target_group_attachment_arn_target_group}"
  target_id        = "${var.aws_lb_target_group_attachment_target_id}"
  port             = "${var.aws_lb_target_group_attachment_target_port}"
}
