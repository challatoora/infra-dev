locals {
  backend= data.aws_ssm_parameter.backend_alb_sg_id.value
}

locals {
    subnet=split(",",data.aws_ssm_parameter.private_subnet_id.value)



    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = "true"
  }

}