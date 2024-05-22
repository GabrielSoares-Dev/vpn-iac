resource "aws_instance" "openvpn" {
  ami                         = data.aws_ami.open_vpn_ami.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  security_groups             = [aws_security_group.security_group_openvpn.id]
  subnet_id                   = var.subnet_id
  iam_instance_profile        = aws_iam_instance_profile.openvpn_instance_profile.name
  key_name                    = aws_key_pair.openvpn_key.key_name
  tags = {
    Name = "openvpn"
  }

  depends_on = [aws_key_pair.openvpn_key]
}
