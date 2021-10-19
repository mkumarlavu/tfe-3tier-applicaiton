module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.2.0"

  name = "${var.environment}-bastion_host"

  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.bastion_main_sg.this_security_group_id]
  tags = local.common_tags
}