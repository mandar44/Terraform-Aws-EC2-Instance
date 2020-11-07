terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
/*
provider "aws" {
  region      = "ap-south-1"
  access_key  = "AKIAIHUWVMOD7GDDLSUA"
  secret_key  = "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"
}
*/

provider "aws" {
  region      = var.aws_region_id
  access_key  = var.aws_access_key
  secret_key  = var.aws_secret_key
}

# Create EC2 Ubuntu Instance V1
resource "aws_instance" "web-1" {
  ami           = var.aws_ami[var.aws_region_id]
  instance_type = "t2.micro"

  tags = {
    Name = "ec2-ubuntu-free-terraform-tag-V1"
  }
}

# Create EC2 Ubuntu Instance V2
resource "aws_instance" "web-2" {
  ami           = "ami-0cda377a1b884a1bc"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2-ubuntu-free-terraform-V2"
  }
}

