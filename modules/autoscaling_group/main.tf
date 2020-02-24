resource "aws_autoscaling_group" "aws_autoscaling_group" {
  name                 = "${var.aws_autoscaling_group_name}"
  max_size             = "${var.aws_autoscaling_group_max_size}"
  min_size             = "${var.aws_autoscaling_group_min_size}"
  launch_configuration = "${aws_launch_configuration.aws_launch_configuration.name}"
  vpc_zone_identifier  = "${var.aws_autoscaling_group_vpc_zone_identifier}"
}

resource "aws_launch_configuration" "aws_launch_configuration" {
  name_prefix     = "${var.aws_launch_configuration_name}"
  image_id        = "${var.aws_launch_configuration_image_id}"
  instance_type   = "${var.aws_launch_configuration_instance_type}"
  security_groups = "${var.aws_launch_configuration_security_group}"
}



