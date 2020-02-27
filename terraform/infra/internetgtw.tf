module "internet_gateway_rampup" {
    source                      = "../modules/internetgtw"
    aws_internet_gateway_vpc_id = "${module.vpc_rampup.aws_vpc_id}"
    aws_internet_gateway_name   = "${var.internet_gateway_rampup_name}"
}