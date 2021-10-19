module "ec2_private" {
  depends_on = [ module.vpc ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.2.0"

  name = "${var.environment}-private_host"

  count = var.private_instance_count

  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_main_sg.this_security_group_id]
  subnet_id              = module.vpc.private_subnets
  user_data = file("${path.module}/app1-install.sh")
  tags = local.common_tags
}