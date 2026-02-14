resource "aws_lb_target_group" "frontend_tg" {
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "frontend_listener" {
  load_balancer_arn = var.public_alb_arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.frontend_tg.arn
  }
}

resource "aws_lb_target_group" "backend_tg" {
  port     = 3001
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "backend_listener" {
  load_balancer_arn = var.internal_alb_arn
  port              = 3001
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.backend_tg.arn
  }
}
