module "sg" {
    source = "../../roboshop-sg"
    count = length(var.sg-names)
    project = var.project
    environment = var.environment
    sg-name = var.sg-names[count.index]
    vpc-id = local.vpc-id

}