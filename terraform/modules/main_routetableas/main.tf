resource "aws_main_route_table_association" "aws_main_route_table_association" {
  vpc_id         = "${var.aws_main_route_table_association_vpc_id}"
  route_table_id = "${var.aws_main_route_table_association_route_table_id}"
}