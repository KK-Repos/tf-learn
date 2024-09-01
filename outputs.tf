output "aws_instance_details" {
  value = var.provider_choice["key"].name == "aws" ? [
    for idx in range(length(module.aws)) : {
      instance_id = module.aws[idx].instance_ids[0]  
      public_ip   = module.aws[idx].public_ips[0] 
    }
  ] : null
}

output "azure_vm_details" {
  value = var.provider_choice["key"].name == "azure" ? [for i in range(length(module.azure)) : module.azure[i].resource_information] : null
}


