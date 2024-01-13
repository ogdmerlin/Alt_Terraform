# variable file for the compute resource block

variable "instance_ami" {
  description = "The instance ami"
  type        = string
  default     = "ami-0d5eff06f840b45e9"
}

variable "instance_type" {
  description = "The instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "The instance count"
  type        = number
  default     = 2
}

variable "instance_name" {
  description = "The instance name"
  type        = string
  default     = "compute-instance"
}

variable "instance_key_name" {
  description = "The instance key name"
  type        = string
  default     = "terraform"
}

variable "instance_security_group_ids" {
  description = "The instance security group ids"
  type        = list(string)
  default     = []
}

variable "public_subnet_id" {
  description = "The public subnet id"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The vpc id"
  type        = string
  default     = ""
}
