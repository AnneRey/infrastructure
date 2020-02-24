variable "aws_instance_ami" {
  type = string
}

variable "aws_instance_type" {
  type = string
}

variable "aws_instance_subnet_id" {
  type = string
}

variable "aws_instance_name" {
  type = string
}

variable "aws_instance_security_group" {
  type = list
}

variable "aws_instance_key_name" {
  type = string
}

variable "aws_instance_public_ip" {
  type = bool
  default = "false"
}

