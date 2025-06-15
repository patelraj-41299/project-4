resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  key_name               = var.key_name

  user_data = file(var.user_data_path)

  tags = {
    Name = var.name
  }
}
