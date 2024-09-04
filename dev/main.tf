provider "aws" {
  region = "eu-central-1"
}

resource "aws_vpc" "dev_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "Dev-VPC"
  }
}

module "web_server" {
  source = "../modules"
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = "192.168.0.0/24"
  webserver_name = "dev_web"
  ami = "ami-0de02246788e4a354"
  instance_type = "t2.micro"

}
