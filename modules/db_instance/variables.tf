variable "aws_db_instance_storage" {
  type = string
}

variable "aws_db_instance_storage_type" {
  type = string
}

variable "aws_db_instance_engine" {
  type = string
}

variable "aws_db_instance_engine_version" {
  type = string
}

variable "aws_db_instance_class" {
  type = string
}

variable "aws_db_instance_name" {
  type = string
}

variable "aws_db_instance_password" {
  type = string
}

variable "aws_db_instance_security_groups_id" {
  type = list
}

variable "aws_db_instance_port" {
  type = string
}

variable "aws_db_instance_az" {
  type = string
}

variable "aws_db_instance_subnet_name" {
  type = string
}

variable "aws_db_subnet_group_subnet_ids" {
  type = list
}

variable "aws_db_subnet_group_name" {
  type = string
}
