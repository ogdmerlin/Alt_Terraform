# resource block for compute

resource "aws_instance" "instance" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  count                  = var.instance_count
  key_name               = var.instance_key_name
  vpc_security_group_ids = var.instance_security_group_ids
  subnet_id              = var.public_subnet_id
  tags = {
    Name = var.instance_name
  }
}
