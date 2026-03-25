data "aws_ssm_parameter" "bastion_id" {
  name =  "/${var.project}/${var.environment}/bastion_sg_id"
}

data "aws_ssm_parameter" "mongodb_id" {
  name =  "/${var.project}/${var.environment}/mongodb_sg_id"
}

data "aws_ssm_parameter" "redis_id" {
  name =  "/${var.project}/${var.environment}/redis_sg_id"
}

data "aws_ssm_parameter" "catalogue_id" {
  name =  "/${var.project}/${var.environment}/catalogue_sg_id"
}

data "aws_ssm_parameter" "user_id" {
  name =  "/${var.project}/${var.environment}/user_sg_id"
}

data "aws_ssm_parameter" "shipping_id" {
  name =  "/${var.project}/${var.environment}/shipping_sg_id"
}

data "aws_ssm_parameter" "payment_id" {
  name =  "/${var.project}/${var.environment}/payment_sg_id"
}
data "aws_ssm_parameter" "cart_id" {
  name =  "/${var.project}/${var.environment}/cart_sg_id"
}

data "aws_ssm_parameter" "mysql_id" {
  name =  "/${var.project}/${var.environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "rabbitmq_id" {
  name =  "/${var.project}/${var.environment}/rabbitmq_sg_id"
}
data "aws_ssm_parameter" "backend_alb"{
  name= "/${var.project}/${var.environment}/backend_alb_sg_id"
}

data "aws_ssm_parameter" "frontend_id" {
  name =  "/${var.project}/${var.environment}/frontend_sg_id"
}

data "aws_ssm_parameter" "frontend_alb_sg_id"{
  name= "/${var.project}/${var.environment}/frontend_alb_sg_id"
}
