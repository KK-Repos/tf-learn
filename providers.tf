terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.84.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.63.0"
    }
  }
  required_version = ">= 1.1.3"
}

provider "azurerm" {
  features {}
}

provider "aws" {
}