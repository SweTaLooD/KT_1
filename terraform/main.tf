provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
  security_groups = ["app_security_group"]

  tags = {
    Name = "AppServer"
  }
}

resource "aws_security_group" "app_security_group" {
  name        = "app_sg"
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
