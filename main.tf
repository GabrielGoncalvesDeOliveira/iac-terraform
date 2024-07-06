terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }
    required_version = ">= 0.14.9"
}

provider "aws" {
    profile = "default"
    region = "us-east-2"
}

resource "aws_instance" "app_server" {
    ami = "ami-0139963043080810f"
    instance_type = "t2.micro"
    key_name = "ubuntu-20.04-aws-keypair"
    tags = {
        Name = "Primeira instancia"
    }
}