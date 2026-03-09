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

locals {
  redis_id=data.aws_ssm_parameter.redis_id.value
}

locals {
  mysql_id=data.aws_ssm_parameter.mysql_id.value
}

locals {
  rabbitmq_id=data.aws_ssm_parameter.rabbitmq_id.value
}