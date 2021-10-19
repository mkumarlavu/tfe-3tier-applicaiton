# AWS EC2 Security Group Terraform Outputs

# Public Bastion Host Security Group Outputs
## public_bastion_sg_group_id
output "bastion_main_sg_group_id" {
  description = "The ID of the security group"
  value       = module.bastion_main_sg.this_security_group_id
}

## public_bastion_sg_group_vpc_id
output "bastion_main_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.bastion_main_sg.this_security_group_vpc_id
}

## public_bastion_sg_group_name
output "bastion_main_sg_group_name" {
  description = "The name of the security group"
  value       = module.bastion_main_sg.this_security_group_name
}

# Private EC2 Instances Security Group Outputs
## private_sg_group_id
output "private_main_sg_group_id" {
  description = "The ID of the security group"
  value       = module.private_main_sg.this_security_group_id
}

## private_sg_group_vpc_id
output "private_main_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.private_main_sg.this_security_group_vpc_id
}

## private_sg_group_name
output "private_main_sg_group_name" {
  description = "The name of the security group"
  value       = module.private_main_sg.this_security_group_name
}