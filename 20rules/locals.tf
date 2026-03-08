locals {
  bastion_id=data.aws_ssm_parameter.bastion_id.value
}

locals {
  mongodb_id=data.aws_ssm_parameter.mongodb_id.value
}

locals {
  catalogue_id=data.aws_ssm_parameter.catalogue_id.value
}

locals {
  user_id=data.aws_ssm_parameter.user_id.value
}