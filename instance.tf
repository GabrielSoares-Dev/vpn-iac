resource "aws_instance" "openvpn" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "open_vpn"
  }
}