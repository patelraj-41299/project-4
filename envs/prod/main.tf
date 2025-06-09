module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = var.cidr_block
  env        = var.env
  public_subnet_id = module.subnet.subnet_id
}

module "subnet" {
  source     = "../../modules/subnets"
  vpc_id     = module.vpc.vpc_id
  cidr_block = "10.2.1.0/24"
  az         = "us-east-1a"
  env        = var.env
}

module "sg" {
  source = "../../modules/security_groups"
  vpc_id = module.vpc.vpc_id
  env    = var.env
}

module "ec2" {
  source            = "../../modules/ec2"
  ami_id            = "ami-053b0d53c279acc90"
  instance_type     = "t2.micro"
  subnet_id         = module.subnet.subnet_id
  security_group_id = module.sg.security_group_id
  key_name          = "key-1"
  env               = var.env
}
