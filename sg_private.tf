module "private_main_sg" {

  name        = "private_sg"
  description = "Security group which is used for Private"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules       = ["ssh-tcp","http-80-tcp"]

  egress_rules = ["all-all"]
  tags = local.common_tags
}