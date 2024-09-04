provider "aws" {
  region = "eu-central-1"
}

resource "aws_vpc" "prod_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Prod-VPC"
  }
}

module "web_server" {
  source = "../modules"
  vpc_id = aws_vpc.prod_vpc.id
  cidr_block = "10.0.0.0/24"
  webserver_name = "prod_web"
  ami = "ami-0de02246788e4a354"
  instance_type = "t2.medium"

}
