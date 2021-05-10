module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.6.0"

  name = var.stack_id
  cidr = var.cidr_block
  azs = var.availability_zones
  private_subnets = var.private_subnet_cidr_blocks
  public_subnets = var.public_subnet_cidr_blocks
  enable_nat_gateway = true
  single_nat_gateway = false
  enable_dns_hostnames = true
}
