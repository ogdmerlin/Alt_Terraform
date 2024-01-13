variable "region" {
  default = "eu-west-1"
}

variable "ami" {
  default = {
    "eu-west-1"    = "ami-0c94855ba95b798c7"
    "eu-central-1" = "ami-0493812002a7b0532"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "env" {
  default = "dev"
}
