resource "aws_security_group_rule" "Bastion_internet" { # bastion accespting connection from internet
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = local.bastion_id
}

resource "aws_security_group_rule" "mongodb_Bastion" { # mongodb accespting connection from bastion
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.mongodb_id
}

resource "aws_security_group_rule" "mongodb_catalogue" { # catalogue accespting connection from mongodb
  type = "ingress"
  from_port = 27017
  to_port = 27017
  protocol = "tcp"
  source_security_group_id = local.catalogue_id
  security_group_id = local.mongodb_id
}

resource "aws_security_group_rule" "mongodb_user" { 
  type = "ingress"
  from_port = 27017
  to_port = 27017
  protocol = "tcp"
  source_security_group_id = local.user_id
  security_group_id = local.mongodb_id
}

resource "aws_security_group_rule" "redis_Bastion" { 
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.redis_id
}
resource "aws_security_group_rule" "redis_user" { 
  type = "ingress"
  from_port = 6379
  to_port = 6379
  protocol = "tcp"
  source_security_group_id = local.user_id
  security_group_id = local.redis_id
}

resource "aws_security_group_rule" "redis_cart" { 
  type = "ingress"
  from_port = 6379
  to_port = 6379
  protocol = "tcp"
  source_security_group_id = local.cart_id
  security_group_id = local.redis_id
}


resource "aws_security_group_rule" "mysql_Bastion" { 
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.mysql_id
}

resource "aws_security_group_rule" "mysql_shipping" {
  type = "ingress"
  from_port = 3306
  to_port = 3306
  protocol = "tcp"
  source_security_group_id = local.shipping_id
  security_group_id = local.mysql_id
}


resource "aws_security_group_rule" "rabbitmq_Bastion" {
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.rabbitmq_id
}

resource "aws_security_group_rule" "rabbitmq_payment" { 
  type = "ingress"
  from_port = 5672
  to_port = 5672
  protocol = "tcp"
  source_security_group_id = local.payment_id
  security_group_id = local.rabbitmq_id
}

resource "aws_security_group_rule" "catalogue_Bastion" { 
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.catalogue_id
}



resource "aws_security_group_rule" "catalogue_Backend_alb" { 
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb
  security_group_id = local.catalogue_id
}

resource "aws_security_group_rule" "user_Bastion" { 
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.user_id
}

resource "aws_security_group_rule" "user_backend_alb" { 
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb
  security_group_id = local.user_id
}


resource "aws_security_group_rule" "cart_Bastion" { 
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.cart_id
}

resource "aws_security_group_rule" "cart_backend_alb" { 
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb
  security_group_id = local.cart_id
}


resource "aws_security_group_rule" "shipping_Bastion" { 
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.shipping_id
}

resource "aws_security_group_rule" "shipping_backend_alb" { 
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb
  security_group_id = local.shipping_id
}


resource "aws_security_group_rule" "payment_Bastion" { 
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.payment_id
}

resource "aws_security_group_rule" "payment_backend_alb" { 
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb
  security_group_id = local.payment_id
}

resource "aws_security_group_rule" "backend_alb_bastion" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  # Where traffic is coming from
  source_security_group_id = local.bastion_id
  security_group_id = local.backend_alb
}

resource "aws_security_group_rule" "backend_alb_catalogue" { 
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.catalogue_id
  security_group_id = local.backend_alb
}

resource "aws_security_group_rule" "backend_alb_user" { 
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.user_id
  security_group_id = local.backend_alb
}

resource "aws_security_group_rule" "backend_alb_cart" { 
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.cart_id
  security_group_id = local.backend_alb
}

resource "aws_security_group_rule" "backend_alb_shipping" { 
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.shipping_id
  security_group_id = local.backend_alb
}
resource "aws_security_group_rule" "backend_alb_payment" { 
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.payment_id
  security_group_id = local.backend_alb
}

resource "aws_security_group_rule" "backend_alb_frontend" { 
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.frontend_id
  security_group_id = local.backend_alb
}

resource "aws_security_group_rule" "frontend_frontend_alb" { 
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.frontend_alb_sg_id
  security_group_id = local.frontend_id
}

resource "aws_security_group_rule" "frontend_alb_public" { 
  type = "ingress"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks =["0.0.0.0/0"]
  security_group_id = local.frontend_alb_sg_id
}




