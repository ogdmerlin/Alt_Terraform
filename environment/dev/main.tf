# module block

module "networking" {
  source              = "../../modules/networking"
  vpc_cidr            = "10.0.0.0/16"
  vpc_name            = "networking-vpc"
  public_subnet_cidrs = ["10.0.1.0/24"]
}

module "compute" {
  source         = "../../modules/compute"
  instance_type  = "t2.micro"
  instance_count = 1
  instance_name  = "compute-instance"
  instance_ami   = "ami-0d5eff06f840b45e9"
}
