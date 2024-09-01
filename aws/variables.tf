
# From root's Variable
variable "vm_region" {
  description = "Location of the VM."
  type = string
}

variable "vm_details" {
    description = "aws vm details"
    type = map(string)
    default = {
        ami = "ami-05c3dc660cb6907f0"
        vmSize = "t3.micro"
    }
  
}