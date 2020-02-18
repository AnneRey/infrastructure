variable "vpc_rampup_vpc_name"{
  type = string
  default = "arey-vpc-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "vpc_rampup_cidr_block"{
  type = string
  default = "10.0.0.0/16"
}

variable "subnet_rampup_subnet_name"{
  type = string
  default = "arey-subnet01-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "subnet_rampup_subnet_name_2"{
  type = string
  default = "arey-subnet11-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "subnet_rampup_subnet_name_3"{
  type = string
  default = "arey-subnet02-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "subnet_rampup_subnet_name_4"{
  type = string
  default = "arey-subnet21-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "subnet_rampup_cidr_block"{
  type = string
  default = "10.0.1.0/24"
}

variable "subnet_rampup_cidr_block_2"{
  type = string
  default = "10.0.3.0/24"
}

variable "subnet_rampup_cidr_block_3"{
  type = string
  default = "10.0.2.0/24"
}

variable "subnet_rampup_cidr_block_4"{
  type = string
  default = "10.0.4.0/24"
}

variable "subnet_rampup_az" {
  type = string
  default = "us-east-1a"
}

variable "subnet_rampup_az_2" {
  type = string
  default = "us-east-1b"
}

variable "internet_gateway_rampup_name" {
  type = string
  default = "arey-internetgtw-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "route_table_rampup_cidr_block" {
  type = string
  default = "0.0.0.0/0"
}

variable "instance_rampup_ami" {
  type = string
  default = "ami-08bc77a2c7eb2b1da"
}

variable "instance_rampup_ami_nat" {
  type = string
  default = "ami-00a9d4a05375b2763"
}

variable "instance_rampup_type" {
  type = string
  default = "t2.micro"
}

variable "instance_rampup_name" {
  type = string
  default = "arey-frontEnd01-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "instance_rampup_name_2" {
  type = string
  default = "arey-frontEnd02-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "instance_rampup_name_3" {
  type = string
  default = "arey-backEnd01-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "instance_rampup_name_4" {
  type = string
  default = "arey-backEnd02-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "instance_rampup_name_nat" {
  type = string
  default = "arey-natInstance-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "instance_rampup_name_bastion" {
  type = string
  default = "arey-bastion-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "autoscaling_group_rampup_name" {
  type = string
  default = "arey-autoScalingGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "autoscaling_group_rampup_max_size" {
  type = string
  default = "1"
}

variable "autoscaling_group_rampup_min_size" {
  type = string
  default = "1"
}

variable "autoscaling_group_rampup_launch_name" {
  type = string
  default = "arey-launchConfiguration-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "autoscaling_group_rampup_placement_name" {
  type = string
  default = "arey-placementGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "autoscaling_group_rampup_placement_strategy" {
  type = string
  default = "cluster"
}

variable "app_load_balancer_rampup_name" {
  type = string
  default = "arey-ALB-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "security_groups_alb_rampup_name" {
  type = string
  default = "arey-ALBSecurityGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}





















