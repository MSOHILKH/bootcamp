provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

resource "aws_instance" "demo-server" {
  ami           = "ami-0cae6d6fe6048ca2c" # Replace with a valid AMI ID
  instance_type = "t3.micro"      # Replace with your desired instance type
  key_name      = "dpp"   # Replace with your key pair name

}