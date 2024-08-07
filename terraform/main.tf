provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./vpc"

  vpc_cidr = var.vpc_cidr
  azs      = var.azs
}

module "subnets" {
  source = "./subnets"

  vpc_id = module.vpc.vpc_id
  azs    = var.azs
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "security_groups" {
  source = "./security_groups"

  vpc_id = module.vpc.vpc_id
}

module "network_acls" {
  source = "./network_acls"

  vpc_id = module.vpc.vpc_id
}
