resource "aws_db_instance" "aws_db_instance" {
  allocated_storage      = "${var.aws_db_instance_storage}"
  storage_type           = "${var.aws_db_instance_storage_type}"
  engine                 = "${var.aws_db_instance_engine}"
  engine_version         = "${var.aws_db_instance_engine_version}"
  instance_class         = "${var.aws_db_instance_class}"
  name                   = "${var.aws_db_instance_name}"
  username               = "${var.aws_db_instance_username}"
  password               = "${var.aws_db_instance_password}"
  vpc_security_group_ids = "${var.aws_db_instance_security_groups_id}"
  port                   = "${var.aws_db_instance_port}"
  availability_zone      = "${var.aws_db_instance_az}"
  db_subnet_group_name   = "${aws_db_subnet_group.aws_db_subnet_group.name}"
}

resource "aws_db_subnet_group" "aws_db_subnet_group" {
  name       = "${var.aws_db_subnet_group_name}"
  subnet_ids = "${var.aws_db_subnet_group_subnet_ids}"

  tags = {
    Name = "${var.aws_db_subnet_group_name}"
  }
}