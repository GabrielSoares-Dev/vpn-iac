resource "aws_key_pair" "openvpn_key" {
  key_name   = "openvpn"
  public_key = file("./ssh/openvpn.pub")
}
