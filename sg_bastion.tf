module "bastion_main_sg" {

  name        = "bastion_sg"
  description = "Security group which is used for world"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]

  egress_rules = ["all-all"]
  tags = local.common_tags
}