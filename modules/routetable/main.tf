resource "aws_route_table" "aws_route_table" {
  vpc_id = "${var.aws_route_table_vpc_id}"

  route {
    cidr_block = "${var.aws_route_table_cidr_block}"
    gateway_id = "${var.aws_route_table_gateway_id}"
  }
}