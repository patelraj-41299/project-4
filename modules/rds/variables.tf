variable "allocated_storage" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "db_name" {}
variable "username" {}
variable "password" {}
variable "subnet_group" {}
variable "security_group_ids" {
  type = list(string)
}
variable "name" {}