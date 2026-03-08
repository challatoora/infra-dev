# resource "aws_ssm_parameter" "mongodb_id" {
#   name  = "/${var.project}/${var.environment}/mongodb_sg_id"
#   type  = "String"
#   value = module.sg.sg_id
# }

resource "aws_ssm_parameter" "sg_ids" {
    count = length(var.sg-names)
  name  = "/${var.project}/${var.environment}/${var.sg-names[count.index]}_sg_id"
  type  = "String"
  value = module.sg[count.index].sg_id
}