variable "stack_id" {
  type = string
  default = "test-vpc"
}

variable "cidr_block" {
  type = string
  default = "10.200.0.0/22"
}

variable "availability_zones" {
  type = list
  default = ["ca-central-1a", "ca-central-1b"]
}

variable "public_subnet_cidr_blocks" {
  type = list
  default = ["10.200.0.0/24","10.200.2.0/24"]
}

variable "private_subnet_cidr_blocks" {
  type = list
  default = ["10.200.1.0/24","10.200.3.0/24"]
}

variable "centos7_ami" {
  type = string
  default = "ami-09a6a7e49bd29554b"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_pair" {
  type = string
  default = "test_key"
}
