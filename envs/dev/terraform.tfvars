vpc_cidr = "10.0.0.0/16"
name     = "dev-vpc"
key_name = "key-1"

public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
azs                 = ["us-east-1a", "us-east-1b"]
