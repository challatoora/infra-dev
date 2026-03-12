locals {
  catalogue= data.aws_ssm_parameter.catalogue_sg_id.value

}
locals {
  ami_id=data.aws_ami.joindevops
}

locals {
    subnet=split(",",data.aws_ssm_parameter.private_subnet_id.value)[0]



    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = "true"
  }

}
