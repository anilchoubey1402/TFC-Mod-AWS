terraform {
  required_providers {
    aws = {
        version = "hashicorp/aws"
        source = "5.34.0"
    }

  }
}

provider "aws" {
region = "us-east-1"
}

      resource "aws_instance" "web" {
       ami = data.aws_ami.ubuntu.id
       instance_type = "t2.micro"

  tags = {
    Name = "Github"
  }
}
