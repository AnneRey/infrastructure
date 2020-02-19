variable "aws_security_group_rule_cidr_flag" {
  type = string
  default = ""
}

variable "aws_security_group_rule_cidr_type" {
  type = string
}

variable "aws_security_group_rule_cidr_from_port" {
  type = string
}

variable "aws_security_group_rule_cidr_to_port" {
  type = string
}

variable "aws_security_group_rule_cidr_protocol" {
  type = string
}

variable "aws_security_group_rule_cidr_blocks" {
  type = list
  default = []
}

variable "aws_security_group_rule_security_group_cidr_id" {
  type = string
}



variable "aws_security_group_rule_security_group_id_flag" {
  type = string
  default = ""
}

variable "aws_security_group_rule_security_group_type" {
  type = string
}

variable "aws_security_group_rule_security_group_port" {
  type = string
}

variable "aws_security_group_rule_security_group_to_port" {
  type = string
}

variable "aws_security_group_rule_security_group_protocol" {
  type = string
}

variable "aws_security_group_rule_security_group_source_id" {
  type = string
  default = ""
}

variable "aws_security_group_rule_security_group_id" {
  type = string
}
