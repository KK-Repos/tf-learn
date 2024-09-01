
variable "provider_choice" {
  description = "Choose the provider and its count"
    type = map(object({
    name = string
    count = number
  }))
  
  default = {
    key = {
    name  = "azure"
    count = "1"
    }
  }
}

variable "aws_Region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-2"
}