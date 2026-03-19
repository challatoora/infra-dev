locals {
  vpc_id          =data.aws_ssm_parameter.vpc_id.value
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  ami_id          = data.aws_ami.joindevops.id
  backend_alb_listener_arn= data.aws_ssm_parameter.backend_alb_listener_arn.value
  subnet          = split(",", data.aws_ssm_parameter.private_subnet_id.value)[0]

  common_tags = {
    Project     = var.project
    Environment = var.environment
    Terraform   = "true"
  }
}