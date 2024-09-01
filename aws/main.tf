
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_security_group" "web_security" {
  name        = "web security"
  description = "security for web usage"

  ingress {
    description = "Inbound rules"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Outbound rules"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_ec2_instance" {
  ami                    = var.vm_details["ami"]
  instance_type          = var.vm_details["vmSize"]
  vpc_security_group_ids = [aws_security_group.web_security.id]

  # user_data = file("${path.module}/start-up.sh")
}

