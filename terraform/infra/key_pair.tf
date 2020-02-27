module "key_pair_rampup" {
  source                  = "../modules/key_pair"
  aws_key_pair_name       = "${var.key_pair_rampup_name}"
  aws_key_pair_public_key = "${var.key_pair_rampup_public_key}"
}
