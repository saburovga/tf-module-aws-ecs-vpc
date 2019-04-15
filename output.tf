output "vpc.id" {
  value       = "${aws_vpc.vpc_ecs.id}"
  description = "Name of IAM role that attached to ECS service"
}

output "subnet-a.id" {
  value       = "${aws_subnet.sn_ecs_a.id}"
  description = "Name of IAM role that attached to ECS service"
}

output "subnet-b.id" {
  value       = "${aws_subnet.sn_ecs_b.id}"
  description = "Name of IAM role that attached to ECS service"
}

output "tg.arn" {
  value       = "${aws_lb_target_group.tg_ecs.arn}"
  description = "Name of IAM role that attached to ECS service"
}