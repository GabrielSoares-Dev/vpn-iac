variable "vpc_id" {
  description = "vpc id"
}

variable "subnet_id" {
  description = "subnet id"
}

variable "ingress_rules" { 
  type = map(object({
    name              = string
    from_port         = number
    to_port           = number
    ip_protocol       = string
  }))

  default = {
    ssh = {
      name              = "ssh"
      from_port         = 22
      to_port           = 22
      ip_protocol       = "tcp"
   },
    https = {
      name              = "https"
      from_port         = 443
      to_port           = 443
      ip_protocol       = "tcp"
   },
   first_custom_tcp = {
      name              = "first_custom_tcp "
      from_port         = 945
      to_port           = 945
      ip_protocol       = "tcp"
   },
   second_custom_tcp = {
      name              = "second_custom_tcp"
      from_port         = 943
      to_port           = 943
      ip_protocol       = "tcp"
   },
    udp_custom = {
      name              = "udp_custom"
      from_port         = 1194
      to_port           = 1194
      ip_protocol       = "udp"
   },
  
  }
}

variable "egress_rules" { 
  type = map(object({
    name              = string
    from_port         = number
    to_port           = number
    ip_protocol       = string
  }))

  default = {
    all_trafic = {
      name              = "all_trafic"
      from_port         = 0
      to_port           = 65535
      ip_protocol       = "-1"
   }
  }
}