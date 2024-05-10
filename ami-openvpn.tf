data "aws_ami" "open_vpn_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ami-0a36d74f29e8a3ee9"]
  }
}