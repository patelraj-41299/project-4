variable "db_name" {}
variable "db_user" {}
variable "db_password" {}
variable "subnet_group" {}
variable "security_group_ids" {
  type = list(string)
}
variable "env" {}