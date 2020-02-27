resource "aws_key_pair" "aws_key_pair" {
  key_name   = "${var.aws_key_pair_name}"
  public_key = "${var.aws_key_pair_public_key}"
}