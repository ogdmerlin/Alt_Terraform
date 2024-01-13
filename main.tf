variable "aws_access_key" {}
variable "aws_secret_access_key" {}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
  region     = "us-west-2"
}

resource "aws_instance" "ogd" {
  ami           = "ami-0c94855ba95b798c7" # This is an Ubuntu 18.04 AMI ID for us-west-2
  instance_type = "t2.micro"              # This is a free-tier instance type

  tags = {
    Name = "ogd-instance"
  }
}
