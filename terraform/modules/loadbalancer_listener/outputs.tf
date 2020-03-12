output "loadbalancer_listener_arn" {
  value = "${aws_alb_listener.aws_alb_listener.arn}"
}

output "loadbalancer_listener_id" {
  value = "${aws_alb_listener.aws_alb_listener.id}"
}
