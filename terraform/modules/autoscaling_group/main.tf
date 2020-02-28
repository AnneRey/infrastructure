resource "aws_autoscaling_group" "aws_autoscaling_group" {
  name                 = "${var.aws_autoscaling_group_name}"
  max_size             = "${var.aws_autoscaling_group_max_size}"
  min_size             = "${var.aws_autoscaling_group_min_size}"
  launch_configuration = "${aws_launch_configuration.aws_launch_configuration.name}"
  vpc_zone_identifier  = "${var.aws_autoscaling_group_vpc_zone_identifier}"
  
  tags = [
  {
    key = "Name"
    value = "arey-slave"
    propagate_at_launch = "true"
  },
  {
    key = "created_by"
    value = "Ana Rey"
    propagate_at_launch = "true"
  },
  {
    key = "creation_date"
    value = "13/02/2020"
    propagate_at_launch = "true"
  },
  {
    key = "project_name"
    value = "FINAL_RAMPUP"
    propagate_at_launch = "true"
  },
  {
    key = "stop"
    value = "stop"
    propagate_at_launch = "true"
  }
  ]
}

resource "aws_launch_configuration" "aws_launch_configuration" {
  name_prefix     = "${var.aws_launch_configuration_name}"
  image_id        = "${var.aws_launch_configuration_image_id}"
  instance_type   = "${var.aws_launch_configuration_instance_type}"
  security_groups = "${var.aws_launch_configuration_security_group}"
  key_name        = "${var.aws_launch_configuration_key_name}"
  associate_public_ip_address = "true"
}



