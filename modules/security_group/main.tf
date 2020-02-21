resource "aws_security_group" "aws_security_group" {
  name   = "${var.aws_security_group_name}"
  vpc_id = "${var.aws_security_group_vpc_id}"
}
