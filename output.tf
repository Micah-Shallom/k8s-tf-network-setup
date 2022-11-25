output "KUBERNETES_PUBLIC_ADDRESS" {
    value = aws_lb.lb.dns_name
}