#passing output to root's output

output "instance_ids" {
  value = aws_instance.my_ec2_instance[*].id
}

output "public_ips" {
  value = aws_instance.my_ec2_instance[*].public_ip
}