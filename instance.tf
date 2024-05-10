resource "aws_instance" "openvpn" {
  ami           = data.aws_ami.open_vpn_ami.id
  instance_type = "t2.micro"
  associate_public_ip_address = true

  tags = {
    Name = "openvpn"
  }
}