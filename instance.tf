resource "aws_instance" "openvpn" {
  ami           = data.aws_ami.open_vpn_ami.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  security_groups = [aws_security_group.security_group_openvpn.id]

  tags = {
    Name = "openvpn"
  }
}