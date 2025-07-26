resource "aws_lb" "app-1-alb" {
  name               = "application-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.alb_sg_id]
  subnets            = var.public_subnet_ids
}

resource "aws_lb_target_group" "app-1-tg" {
  name     = "app-1-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "app-1-tg-attachment" {
  target_group_arn = aws_lb_target_group.app-1-tg.arn
  target_id        = var.instance_id
  port            = 80
  depends_on      = [var.instance_id]
}

resource "aws_lb_listener" "app-1-alb-listener" {
  load_balancer_arn = aws_lb.app-1-alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app-1-tg.arn
  }
}
