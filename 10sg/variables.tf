variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}



variable "sg-names"{
    type = list
    default = ["mongodb","redis","rabbitmq","mysql","catalogue","user","cart","shipping"
        ,"payment","backend_alb","frontend","frontend_alb","bastion"
    ]
}
