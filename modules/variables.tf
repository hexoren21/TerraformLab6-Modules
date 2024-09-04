variable "vpc_id" {
  type = string
  description = "VPC id"
}

variable "cidr_block" {
    type = string
    description = "Subnet cidr block"
}

variable "webserver_name" {
    type = string
    description = "Name of the webserver"
}

variable "ami" {
  type = string
  description = "Ami to use"
}

variable "instance_type" {
    type = string
    description = "Instance type"
}