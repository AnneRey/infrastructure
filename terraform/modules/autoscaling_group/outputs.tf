output "aws_autoscaling_group_id" {
  value = "${aws_autoscaling_group.aws_autoscaling_group.id}"
}

output "aws_autoscaling_group_name" {
  value = "${aws_autoscaling_group.aws_autoscaling_group.name}"
}

output "aws_autoscaling_group_arn" {
  value = "${aws_autoscaling_group.aws_autoscaling_group.arn}"
}

#output "aws_placement_group_id" {
 # value = "${aws_placement_group.aws_placement_group.placement_group_id}"
#}

#output "aws_placement_group_name" {
 # value = "${aws_placement_group.aws_placement_group.id}"
#}

output "aws_launch_configuration_id" {
  value = "${aws_launch_configuration.aws_launch_configuration.id}"
}

output "aws_launch_configuration_arn" {
  value = "${aws_launch_configuration.aws_launch_configuration.arn}"
}

output "aws_launch_configuration_name" {
  value = "${aws_launch_configuration.aws_launch_configuration.name}"
}



