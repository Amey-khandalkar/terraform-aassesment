

output "network_id" {
  value       = module.vpc.network_id
  description = "Exports the network ID"
}

output "network_name" {
  value       = module.vpc.network_name
  description = "Exports the network name"
}

output "subnets_names" {
  value       = module.vpc.subnets_names
  description = "Exports the subnet names"
}

output "subnets_ids" {
  value       = module.vpc.subnets_ids
  description = "Exports the subnet IDs"
}

output "subnets_secondary_ranges" {
  value       = module.vpc.subnets_secondary_ranges
  description = "Exports the subnet secondary ranges"
}

output "subnets_ips" {
  value       = module.vpc.subnets_ips
  description = "Exports the subnet IPs"
}
