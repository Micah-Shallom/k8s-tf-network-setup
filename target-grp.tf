resource "aws_lb_target_group" "lb_tg" {
  name     = var.name
  port     = 6443
  protocol = "TCP"
  vpc_id   = aws_vpc.vpc.id
  target_type = "ip"
}

resource "aws_lb_target_group_attachment" "lb_tg_attach" {
  count = 3
  target_group_arn = aws_lb_target_group.lb_tg.arn
  # target_id        = "172.31.0.1${[for each in range(0,3,1) :  each ][0]}"
  # target_id        = ["172.31.0.10","172.31.0.11","172.31.0.12"]
  target_id        = "172.31.0.1${count.index}"
  port             = 6443
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.lb.arn
  port              = "6443"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lb_tg.arn
  }
}