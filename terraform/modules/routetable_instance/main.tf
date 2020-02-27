resource "aws_route_table" "aws_route_table_instance" {
  vpc_id = "${var.aws_route_table_vpc_id_instance}"

  route {
    cidr_block  = "${var.aws_route_table_cidr_block}"
    instance_id = "${var.aws_route_table_instance_id}"
  }
}