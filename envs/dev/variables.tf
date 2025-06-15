variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "name" {
  default = "dev-vpc"
}

variable "key_name" {
  description = "key-1"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
}
