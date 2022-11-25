resource "aws_lb" "lb" {
  name               = var.name
  internal           = false
  load_balancer_type = "network"
  subnets            = [for sub in aws_subnet.subnet[*] : sub.id]
#   subnets            = [aws_subnet.subnet.id]

#   enable_deletion_protection = true

  tags = {
    Name = var.name
  }
}