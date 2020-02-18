output "aws_instance_id" {
  value = "${aws_instance.aws_instance.id}"
}

output "aws_instance_arn" {
  value = "${aws_instance.aws_instance.arn}"
}

output "aws_instance_private_ip" {
  value = "${aws_instance.aws_instance.private_ip}"
}

output "aws_instance_security_groups" {
  value = "${aws_instance.aws_instance.security_groups}"
}

output "aws_instance_subnet_id" {
  value = "${aws_instance.aws_instance.subnet_id}"
}

output "aws_key_pair_key_name" {
  value = "${aws_instance.aws_instance.key_name}"
}

output "aws_key_pair_key_pair_id" {
  value = "${aws_instance.aws_instance.key_pair_id}"
}





