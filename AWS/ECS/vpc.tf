resource "aws_vpc" "vpc_ecs" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = var.instance_tenancy

  tags = {
    name = "vpc"
  }
}


