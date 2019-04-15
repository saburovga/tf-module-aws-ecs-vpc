resource "aws_lb" "lb_ecs" {
  name               = "lb-ecs"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.allow_all.id}"]
  subnets            = ["${aws_subnet.sn_ecs_a.id}", "${aws_subnet.sn_ecs_b.id}"]

  tags = {
    name = "lb_ecs"
  }
}

resource "aws_lb_target_group" "tg_ecs" {
  name        = "tg-ecs"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = "${aws_vpc.vpc_ecs.id}"
}

resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = "${aws_lb.lb_ecs.arn}"
  port              = "80"
  protocol          = "HTTP"
  
  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.tg_ecs.arn}"
  }
}