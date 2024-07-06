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
    # user_data = <<-EOF
    #             #!/bin/bash
    #             cd /home/ubuntu
    #             echo "<h1>Feito com Terrform</h1>" > index.html
    #             nohup busybox httpd -f -p 8080 &
    #             EOF
    tags = {
        Name = "Terraform Ansible Python"
    }
}