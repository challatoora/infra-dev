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

resource "aws_security_group_rule" "mysql_Bastion" { # mongodb accespting connection from bastion
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_id
  security_group_id = local.mysql_id
}