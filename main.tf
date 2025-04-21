

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.90.1"
    }
  }
}
provider "aws" {
region     = "ap-southeast-1"
access_key = "${var.access_key}"
secret_key = "${var.secret_key}"
}
resource "aws_security_group" "TEST3" {
  name        = "TEST3"
  description = "Security Group for TEST3"
  vpc_id      = "vpc-065d9a9f4928d8314"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["172.31.32.0/20"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] 
  }
}
