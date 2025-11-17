provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

resource "aws_instance" "demo-server" {
  ami           = "ami-0cae6d6fe6048ca2c" # Replace with a valid AMI ID
  instance_type = "t3.micro"      # Replace with your desired instance type
  key_name      = "dpp"   # Replace with your key pair name
  security_groups = ["demo-sg"]

}

resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "SSH Access"

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-port"
  }
}