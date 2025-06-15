module "vpc" {
  source              = "../../modules/vpc"
  vpc_cidr            = var.vpc_cidr
  name                = var.name
  public_subnet_cidrs = var.public_subnet_cidrs
  azs                 = var.azs
}

module "security_groups" {
  source  = "../../modules/security_groups"
  name    = "${var.name}-sg"
  vpc_id  = module.vpc.vpc_id
}

module "ec2" {
  source              = "../../modules/ec2"
  ami                 = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI in us-east-1
  instance_type       = "t2.micro"
  subnet_id           = module.vpc.public_subnet_ids[0]
  security_group_ids  = [module.security_groups.security_group_id]
  key_name            = var.key_name
  name                = "dev-app-ec2"
  user_data_path      = "${path.module}/../../scripts/userdata.sh"
}
