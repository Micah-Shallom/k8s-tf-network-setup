resource "aws_security_group" "cluster-sg" {
  name        = var.name
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 2379
    to_port          = 2380
    protocol         = "tcp"
    cidr_blocks      = [aws_subnet.subnet.cidr_block]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 30000
    to_port          = 32767
    protocol         = "tcp"
    cidr_blocks      = [aws_subnet.subnet.cidr_block]
  }
  ingress {
    description      = "TLS from VPC"
    from_port        = 6443
    to_port          = 6443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "ICMP from VPC"
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.name
  }
}

