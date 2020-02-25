resource "aws_route_table_association" "aws_route_table_association" {
  subnet_id      = "${var.aws_route_table_association_subnet}"
  route_table_id = "${var.aws_route_table_association_id_route}"
}