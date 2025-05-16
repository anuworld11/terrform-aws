terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
/*resource "aws_instance" "myfirstinstance" {
  ami           = "ami-0953476d60561c955" # Amazon Linux 2 AMI
  instance_type = "t2.nano"


  tags = {
    Name = "MyFirstInstance"
  }
}*/
