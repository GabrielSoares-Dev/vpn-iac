data "aws_ami" "open_vpn_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["OpenVPN Access Server Community Image-fe8020db-5343-4c43-9e65-5ed4a825c931ami-06e5a963b2dadea6f"]
  }
}