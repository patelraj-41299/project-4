resource "aws_instance" "backend_server" {
  ami                         = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (us-east-2)
  instance_type               = "t2.micro"              # Free-tier eligible
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true
  key_name                    = "new"  # Replace with your actual Key Pair name

  tags = {
    Name = "ecommerce-backend-server"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              curl -sL https://rpm.nodesource.com/setup_16.x | bash -
              yum install -y nodejs
              yum install -y git
              EOF
}
