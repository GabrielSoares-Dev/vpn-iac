resource "aws_iam_instance_profile" "openvpn_instance_profile" {
  name = "openvpn_instance_profile"
  role = aws_iam_role.openvpn_instance_role.name
}