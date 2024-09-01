

Resource block specifies an infrastructure component that Terraform will manage. This can be anything from virtual machines, databases, networks, or any other infrastructure component supported by the provider.


Based on providers

```
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

```

 **Attributes**

• Inside the resource block, you define various attributes required by the resource type. These attributes configure the specifics of the resource, such as size, location, or any other parameters.

```

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example.id
}

```