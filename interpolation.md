Interpolation Syntax

Interpolation is a way to dynamically construct strings and values by incorporating variables, resource attributes, and other expressions.


Terraform uses ${} for interpolation.

New Syntax (0.12+): Direct expression (no need for ${} in most cases)


## Variables and Attributes: 

Old 

value = "${aws_instance.example.id}"


new 

value = aws_instance.example.id


resource "aws_instance" "example" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-${count.index + 1}"
  }
}
