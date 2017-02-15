variable "vpc_name" {}
variable "cidr_block" {}
variable "vpc_enable_dns_hostnames" {}
variable "vpc_enable_dns_support" {}
variable "gateway_enabled" {}
variable "nat_enabled" {}
variable "private_subnets" { default = [] }
variable "public_subnets" { default = [] }
variable "security_group_default_ingress" {
  default = {
    from_port = 0
    to_port = 0
    protocol = "-1"
    self = true
  }
}
variable "security_group_default_egress" {
  default = {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = "0.0.0.0/0"
  }
}
variable "subnet_availability_zones" { default = [] }
