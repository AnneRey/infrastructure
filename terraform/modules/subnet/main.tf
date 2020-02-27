resource "aws_subnet" "aws_subnet" {
  vpc_id     = "${var.aws_subnet_vpc_id}"
  cidr_block = "${var.aws_subnet_cidr}"
  availability_zone = "${var.aws_subnet_az}"

  tags = {
    Name = "${var.aws_subnet_name}"
  }
}
