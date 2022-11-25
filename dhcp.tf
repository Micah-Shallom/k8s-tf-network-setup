# ==============================================================================================
# dhcp configuration
resource "aws_vpc_dhcp_options" "dhcp_configuration" {
    domain_name = "${var.region}.compute.internal"
    domain_name_servers = ["8.8.8.8", "8.8.4.4"]

    tags = {
        Name = var.name
    }
}

resource "aws_vpc_dhcp_options_association" "dhcp_configuration" {
  vpc_id          = aws_vpc.vpc.id
  dhcp_options_id = aws_vpc_dhcp_options.dhcp_configuration.id
}
