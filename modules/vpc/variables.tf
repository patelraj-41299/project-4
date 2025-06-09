variable "cidr_block" {}
variable "env" {}

variable "public_subnet_id" {
  description = "Subnet ID to associate with the public route table"
}
