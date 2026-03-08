output "sg_vpc" {
    value= module.vpc.vpc_id
}

output "public_sub" {
    value = module.vpc.public_subnet
  
}

output "private_sub" {
    value = module.vpc.private_subnet
  
}

output "database_sub" {
    value = module.vpc.database_subnet
  
}