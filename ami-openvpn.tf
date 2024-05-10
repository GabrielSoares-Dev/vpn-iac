data "aws_ami" "open_vpn_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ami-0ddda618e961f2270 (64 bits (x86), uefi-preferred) / ami-09d190d2c3c5b16e6 (64 bits (Arm), uefi)"]
  }
}