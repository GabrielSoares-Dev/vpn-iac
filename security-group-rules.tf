resource "aws_vpc_security_group_ingress_rule" "ingress_rules" {
  for_each          = var.ingress_rules
  security_group_id = aws_security_group.security_group_openvpn.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = each.value.from_port
  ip_protocol = each.value.ip_protocol
  to_port     = each.value.to_port

  tags = {
    Name = each.value.name
  }
}
