module "aws" {
  source = "./aws"
  vm_region = var.aws_Region #Pass variable value from root 
  providers = {
    aws = aws
  }
  count  = var.provider_choice["key"].name == "aws" ? var.provider_choice["key"].count : 0 # #Pass variable value from root 
}