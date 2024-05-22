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
      from_port         = 22
      to_port           = 22
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