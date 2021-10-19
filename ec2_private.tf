module "ec2_private" {
  depends_on = [ module.vpc ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.2.0"

  name = "${var.environment}-private_host"

  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_main_sg.this_security_group_id]
  subnet_ids              = [
      module.vpc.private_subnets[0],
      module.vpc.private_subnets[1]
  ]
  instance_count = var.private_instance_count
  user_data = file("{path.module}/app1-install.sh")
  tags = local.common_tags
}