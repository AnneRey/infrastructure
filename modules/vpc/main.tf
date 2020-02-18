resource "aws_vpc" "aws_vpc" {
  cidr_block = "${var.aws_vpc_cidr_block}"

  tags = {
    Name = "${var.aws_vpc_name_vpc}"
  }
}
