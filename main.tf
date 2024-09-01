module "aws" {
  source = "./aws"
  vm_region = var.aws_Region
  providers = {
    aws = aws
  }
  count  = var.provider_choice["key"].name == "aws" ? var.provider_choice["key"].count : 0
}