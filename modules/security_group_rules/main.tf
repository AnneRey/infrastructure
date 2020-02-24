resource "aws_security_group_rule" "aws_security_group_rule_cidr" {
  count             = "${var.aws_security_group_rule_cidr_flag != "" ? 1 : 0}"
  type              = "${var.aws_security_group_rule_type}"
  from_port         = "${var.aws_security_group_rule_from_port}"
  to_port           = "${var.aws_security_group_rule_to_port}"
  protocol          = "${var.aws_security_group_rule_protocol}"
  security_group_id = "${var.aws_security_group_rule_security_group_id}"
  cidr_blocks       = "${var.aws_security_group_rule_cidr_blocks}"

}

resource "aws_security_group_rule" "aws_security_group_rule_security_group" {
  count                    = "${var.aws_security_group_rule_security_group_id_flag != "" ? 1 : 0}"
  type                     = "${var.aws_security_group_rule_type}"
  from_port                = "${var.aws_security_group_rule_from_port}"
  to_port                  = "${var.aws_security_group_rule_to_port}"
  protocol                 = "${var.aws_security_group_rule_protocol}"
  security_group_id        = "${var.aws_security_group_rule_security_group_id}"
  source_security_group_id = "${var.aws_security_group_rule_security_group_source_id}"
}
