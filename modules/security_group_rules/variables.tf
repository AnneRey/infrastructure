variable "aws_security_group_rule_cidr_flag" {
  type = string
  default = ""
}

variable "aws_security_group_rule_cidr_type" {
  type = string
  default = ""
}

variable "aws_security_group_rule_from_port" {
  type = string
}

variable "aws_security_group_rule_to_port" {
  type = string
}

variable "aws_security_group_rule_cidr_blocks" {
  type = list
  default = []
}


variable "aws_security_group_rule_security_group_id_flag" {
  type = string
  default = ""
}

variable "aws_security_group_rule_type" {
  type = string
}

variable "aws_security_group_rule_protocol" {
  type = string
  default = "TCP"
}

variable "aws_security_group_rule_security_group_source_id" {
  type = string
  default = ""
}

variable "aws_security_group_rule_security_group_id" {
  type = string
}
