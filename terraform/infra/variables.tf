variable "vpc_rampup_vpc_name"{
  type = string
  default = "arey-vpc-AnaRey-13/02/2020-AWSSETUPRAMPUP2-stop"
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
  default = "10.0.2.0/24"
}

variable "subnet_rampup_cidr_block_3"{
  type = string
  default = "10.0.3.0/24"
}

variable "subnet_rampup_cidr_block_4"{
  type = string
  default = "10.0.4.0/24"
}

variable "subnet_rampup_az" {
  type = string
  default = "us-west-2a"
}

variable "subnet_rampup_az_2" {
  type = string
  default = "us-west-2b"
}

variable "subnet_rampup_az_4" {
  type = string
  default = "us-west-2d"
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
  default = "ami-02d0ea44ae3fe9561"
}

variable "instance_rampup_ami_nat" {
  type = string
  default = "ami-009816cdbb1e74ceb"
}

variable "instance_rampup_type" {
  type = string
  default = "t2.small"
}

variable "instance_rampup_name_nat" {
  type = string
  default = "arey-natInstance"
}

variable "instance_rampup_name_bastion" {
  type = string
  default = "arey-bastion"
}

variable "autoscaling_group_rampup_name" {
  type = string
  default = "arey-autoScalingGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "autoscaling_group_rampup_max_size" {
  type = string
  default = "2"
}

variable "autoscaling_group_rampup_min_size" {
  type = string
  default = "2"
}

variable "autoscaling_group_rampup_launch_name" {
  type = string
  default = "arey-launchConfiguration-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "app_load_balancer_rampup_name" {
  type = string
  default = "arey-ALB"
}

variable "security_group_alb_name" {
  type = string
  default = "arey-ALBSecurityGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "security_group_alb_type" {
  type = string
  default = "ingress"
}

variable "security_group_alb_from_port" {
  type = string
  default = "80"
}

variable "security_group_alb_to_port" {
  type = string
  default = "80"
}

variable "security_group_alb_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_alb_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_cluster_name" {
  type = string
  default = "arey-clusterSecurityGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "security_group_bastion_name" {
  type = string
  default = "arey-bastionSecurityGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "security_group_rds_name" {
  type = string
  default = "arey-rdsSecurityGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "security_group_kubernetes_name" {
  type = string
  default = "arey-kubernetesSecurityGroup-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "security_group_rules_cluster_ingress_3030_type" {
  type = string
  default = "ingress"
}

variable "security_group_rules_cluster_ingress_3030_from_port" {
  type = string
  default = "3030"
}

variable "security_group_rules_cluster_ingress_3030_to_port" {
  type = string
  default = "3030"
}

variable "security_group_rules_cluster_ingress_3030_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_cluster_ingress_22_type" {
  type = string
  default = "ingress"
}

variable "security_group_rules_cluster_ingress_22_from_port" {
  type = string
  default = "22"
}

variable "security_group_rules_cluster_ingress_22_to_port" {
  type = string
  default = "22"
}

variable "security_group_rules_cluster_ingress_22_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_cluster_ingress_self_type" {
  type = string
  default = "ingress"
}

variable "security_group_rules_cluster_ingress_self_from_port" {
  type = string
  default = "0"
}

variable "security_group_rules_cluster_ingress_self_to_port" {
  type = string
  default = "65535"
}

variable "security_group_rules_cluster_ingress_self_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_bastion_type" {
  type = string
  default = "ingress"
}

variable "subnet_rampup_az_3" {
  type = string
  default = "us-west-2c"
}

variable "subnet_rampup_cidr_block_5" {
  type = string
  default = "10.0.5.0/24"
}

variable "subnet_rampup_subnet_name_5" {
  type = string
  default = "arey-subnet05-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "instance_rampup_kube_type" {
  type = string
  default = "t2.small"
}

variable "instance_rampup_kube_name" {
  type = string
  default = "arey-kubeInstance"
}

variable "key_pair_rampup_name" {
  type = string
  default = "arey-keyPair-Ana Rey-13/02/2020-AWS SETUP RAMPUP2-stop"
}

variable "key_pair_rampup_public_key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDwfgiiyAucMLwHN9p35Q+Rb4c1c4CGDTQlHcL5/o0PNza7LgSiZgxzJo5FMqg569sfC271RyFNmUDUci2hT81DmDDXWrwstFS6ZlduYcNlAkYD+WkqCTMIjuUQ8vLAazkv65qKZ17KZpVkeUKbf/26J7xGMpjHUjqu6Q2q4b8LNw== anarey@EN911055"
}

variable "security_group_rules_cluster_ingress_kube_tcp_type" {
  type = string
  default= "ingress"
}

variable "security_group_rules_cluster_ingress_kube_tcp_from_port" {
  type = string
  default = "0"
}

variable "security_group_rules_cluster_ingress_kube_tcp_to_port" {
  type = string
  default = "65535"
}

variable "security_group_rules_cluster_ingress_kube_tcp_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_cluster_ingress_kube_udp_type" {
  type = string
  default = "ingress"
}

variable "security_group_rules_cluster_ingress_kube_udp_from_port" {
  type = string
  default = "0"
}

variable "security_group_rules_cluster_ingress_kube_udp_to_port" {
  type = string
  default = "65535"
}

variable "security_group_rules_cluster_ingress_kube_udp_protocol" {
  type = string
  default = "udp"
}

variable "security_group_bastion_from_port" {
  type = string
  default = "22"
}

variable "security_group_bastion_to_port" {
  type = string
  default = "22"
}

variable "security_group_bastion_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_bastion_cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_rules_rds_type" {
  type = string
  default = "ingress"
}

variable "security_group_rules_rds_from_port" {
  type = string
  default = "0"
}

variable "security_group_rules_rds_to_port" {
  type = string
  default = "65535"
}

variable "security_group_rules_rds_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_kube_type" {
  type = string
  default = "ingress"
}

variable "security_group_rules_kube_from_port" {
  type = string
  default = "22"
}

variable "security_group_rules_kube_to_port" {
  type = string
  default = "22"
}

variable "security_group_rules_kube_protocol" {
  type = string
  default = "tcp"
}

variable "db_instance_mysql_rampup_storage" {
  type = string
  default = "20"
}

variable "db_instance_mysql_rampup_storage_type" {
  type = string
  default = "gp2"
}

variable "db_instance_mysql_rampup_engine" {
  type = string
  default = "mysql"
}

variable "db_instance_mysql_rampup_engine_version" {
  type = string
  default = "5.7"
}

variable "db_instance_mysql_rampup_class" {
  type = string
  default = "db.t2.micro"
}

variable "db_instance_mysql_rampup_name" {
  type = string
  default = "areydbInstance"
}

variable "db_instance_mysql_rampup_port" {
  type = string
  default = "3306"
}

variable "db_instance_mysql_rampup_az" {
  type = string
  default = "us-west-2b"
}

variable "db_instance_mysql_rampup_group_name" {
  type = string
  default = "arey-dbgroupname-anarey-13022020-awssetuprampup2-stop"
}

variable "aws_db_instance_username" {
  type = string
}

variable "aws_db_instance_password" {
  type = string
}

variable "autoscaling_group_rampup_type" {
  type = string
  default = "t2.small"
}

variable "aws_security_group_rules_nat_cluster_type" {
  type = string
  default = "ingress"
}

variable "aws_security_group_rules_nat_cluster_from_port" {
  type = string
  default = "0"
}

variable "aws_security_group_rules_nat_cluster_to_port" {
  type = string
  default = "65535"
}

variable "aws_security_group_rules_nat_cluster_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_nat_name" {
  type = string
  default = "arey-natSG-anarey-13022020-awssetuprampup2-stop"
}

variable "aws_security_group_rules_nat_bastion_type" {
  type = string
  default = "ingress"
}

variable "aws_security_group_rules_nat_bastion_from_port" {
  type = string
  default = "22"
}

variable "aws_security_group_rules_nat_bastion_to_port" {
  type = string
  default = "22"
}

variable "aws_security_group_rules_nat_bastion_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_bastion_outbound_type" {
  type = string
  default ="egress"
}

variable "security_group_bastion_outbound_from_port" {
  type = string
  default = "0"
}

variable "security_group_bastion_outbound_to_port" {
  type = string
  default = "65535"
}

variable "security_group_bastion_outbound_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_bastion_outbound_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_rules_nat_outbound_type" {
  type = string
  default = "egress"
}

variable "security_group_rules_nat_outbound_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_nat_outbound_from_port" {
  type = string
  default = "80"
}

variable "security_group_rules_nat_outbound_to_port" {
  type = string
  default = "80"
}

variable "security_group_rules_nat_outbound_cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_rules_nat_ingress_type" {
  type = string
  default = "ingress"
}

variable "security_group_rules_nat_ingress_from_port" {
  type = string
  default = "80"
}

variable "security_group_rules_nat_ingress_to_port" {
  type = string
  default = "80"
}

variable "security_group_rules_nat_ingress_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_nat_ingress_cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_rules_nat_outbound_tcp_from_port" {
  type = string
  default = "0"
}

variable "security_group_rules_nat_outbound_tcp_to_port" {
  type = string
  default = "65535"
}

variable "security_group_rules_nat_outbound_tcp_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_nat_outbound_tcp_cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_rules_kube_outbound_type" {
  type = string
  default = "egress"
}

variable "security_group_rules_kube_outbound_from_port" {
  type = string
  default = "0"
}

variable "security_group_rules_kube_outbound_to_port" {
  type = string
  default = "65535"
}

variable "security_group_rules_kube_outbound_protocol" {
  type = string 
  default = "tcp"
}

variable "security_group_rules_kube_outbound_cidr_block" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_alb_outbound_type" {
  type = string
  default = "egress"
}

variable "security_group_alb_outbound_from_port" {
  type = string
  default = "0"
}

variable "security_group_alb_outbound_to_port" {
  type = string
  default = "65535"
}

variable "security_group_alb_outbound_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_alb_outbound_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_rules_cluster_outbound_type" {
  type = string
  default = "egress"
}

variable "security_group_cluster_outbound_from_port" {
  type = string
  default = "0"
}

variable "security_group_cluster_outbound_to_port" {
  type = string
  default = "65535"
}

variable "security_group_cluster_outbound_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_cluster_outbound_cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_rds_outbound_type" {
  type = string
  default = "egress"
}

variable "security_group_rds_outbound_from_port" {
  type = string
  default = "0"
}

variable "security_group_rds_outbound_to_port" {
  type = string
  default = "65535"
}

variable "security_group_rds_outbound_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rds_outbound_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_bastion_from_port_8080" {
  type = string
  default = "8080"
}

variable "security_group_bastion_to_port_8080" {
  type = string
  default = "8080"
}

variable "security_group_rules_kube_inbound_type" {
  type = string
  default = "ingress"
}

variable "security_group_rules_kube_inbound_from_port" {
  type = string
  default = "0"
}

variable "security_group_rules_kube_inbound_to_port" {
  type = string
  default = "65535"
}

variable "security_group_rules_kube_inbound_protocol" {
  type = string
  default = "tcp"
}

variable "security_group_rules_kube_inbound_cidr_block" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "security_group_rules_kube_inbound_udp_protocol" {
  type = string
  default = "udp"
}

variable "target_group_port" {
  type = string
  default = "3030"
}

variable "target_group_protocol" {
  type = string
  default = "HTTP"
}

variable "target_group_name" {
  type = string
  default = "arey-target_group_front_3030"
}

variable "target_group_attachment_target_port" {
  type = string
  default = "3030"
}






















