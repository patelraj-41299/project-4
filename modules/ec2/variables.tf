variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_ids" {
  type = list(string)
}
variable "key_name" {}
variable "name" {}
variable "user_data_path" {}
