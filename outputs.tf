# output from aws module
output "aws_instance_details" {
  value = var.provider_choice["key"].name == "aws" ? [
    for idx in range(length(module.aws)) : {
      instance_id = module.aws[idx].instance_ids[0]  
      public_ip   = module.aws[idx].public_ips[0] 
    }
  ] : null
}


