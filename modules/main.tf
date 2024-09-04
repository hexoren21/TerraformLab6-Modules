terraform {
  required_version = ">= 0.12"
}
resource "aws_subnet" "my_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
}

resource "aws_instance" "my_instance" {
  ami                    = var.ami
  instance_type          = var.instance_type 
  subnet_id              = aws_subnet.my_subnet.id

  tags = {
    Name = "${var.webserver_name}"
  }
}