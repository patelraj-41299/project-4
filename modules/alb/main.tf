resource "aws_lb" "app_alb" {
  name               = "${var.env}-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = var.subnets

  tags = {
    Environment = var.env
  }
}