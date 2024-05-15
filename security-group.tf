resource "aws_security_group" "security_group_openvpn" {
  name        = "security_group_openvpn"
  description = "Security group to load instance with open vpn"
  vpc_id      = data.aws_vpc.main.id

  tags = {
    Name = "security_group_openvpn"
  }
}
