provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      "owner"        = "DevopsTeam"
      "project-name" = "vpn-iac"
      "managed-by"   = "terraform"
    }
  }
}