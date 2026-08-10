output "vpc_id" {
  value = module.vpc.vpc_id
}

output "az_names" {
  value = module.vpc.az_names
}

output "public_sunnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_sunnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "database_sunnet_ids" {
  value = module.vpc.database_subnet_ids
}