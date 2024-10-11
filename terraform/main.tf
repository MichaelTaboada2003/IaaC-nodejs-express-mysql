terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "app_server" {
  ami           = "ami-0a0e5d9c7acc336f1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_http.id, aws_security_group.allow_ssh.id, aws_security_group.access_mysql.id]
  key_name = "michael-key-pairs"
  associate_public_ip_address = true
  tags = {
    Name = "APP SERVER"
  }
}

resource "aws_instance" "mysql_server" {
  ami           = "ami-0a0e5d9c7acc336f1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_mysql.id]
  key_name = "michael-key-pairs"
  associate_public_ip_address = true
  tags = {
    Name = "MYSQL SERVER"
  }
}
