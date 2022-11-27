output "KUBERNETES_PUBLIC_ADDRESS" {
    value = aws_lb.lb.dns_name
}

output "VPC_ID" {
    value = aws_vpc.vpc.id
}
output "SUBNET_ID" {
    value = aws_subnet.subnet.id
}

output "INTERNET_GATEWAY_ID" {
    value = aws_internet_gateway.igw.id
}
output "ROUTE_TABLE_ID" {
    value = aws_route_table.rtb.id
}

output "SECURITY_GROUP_ID" {
    value = aws_security_group.cluster-sg.id
}

output "LOAD_BALANCER_ARN" {
    value = aws_lb.lb.arn
}

output "TARGET_GROUP_ARN" {
    value = aws_lb_target_group.lb_tg.arn
}

output "IMAGE_ID" {
    value = data.aws_ami.latest-ubuntu-linux-image.id
}
