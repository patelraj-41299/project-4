resource "aws_lb" "app_alb" {
  name               = var.name
  internal           = false
  load_balancer_type = "application"
  subnets            = var.subnets
  security_groups    = var.security_groups

  tags = {
    Name = var.name
  }
}