resource "aws_instance" "web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true
  key_name                    = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y docker.io
              systemctl start docker
              systemctl enable docker
              docker pull raj41299/flask-app:latest
              docker run -d -p 80:5000 raj41299/flask-app:latest
              EOF

  tags = {
    Name = "${var.env}-ec2"
  }
}
