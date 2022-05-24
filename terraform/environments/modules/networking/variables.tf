# variable "host_project_id" {
#   description = "ID of the project which will contain host VPC"
#   type        = string
# }
# variable "project_id" {
#   description = "ID of the project which will contain host VPC"
#   type        = string
# }
# variable "project_ids" {
#   description = "ID of the project which will contain host VPC"
#   type        = list(string)
# }
# # variable "host_project_number" {
# #   type = string

# # }

# variable "host_vpc_name" {
#   description = "Name of the host VPC"
#   type        = string
# }

# variable "primary_subnet_name_central1" {
#   description = ""
#   type        = string
# }

# variable "primary_subnet_name_east4" {
#   description = ""
#   type        = string
# }

# variable "secondary_subnet_central1_pod" {
#   description = ""
#   type        = string
# }

# variable "secondary_subnet_central1_service" {
#   description = ""
#   type        = string
# }

# variable "secondary_subnet_east4_pod" {
#   description = ""
#   type        = string
# }

# variable "secondary_subnet_east4_service" {
#   description = ""
#   type        = string
# }


# variable "primary_subnet_1_cidr" {
#   type = string
# }

# variable "primary_subnet_2_cidr" {
#   type = string
# }

# variable "cidr_range_central1_pod" {
#   type = string
# }

# variable "cidr_range_central1_service" {
#   type = string
# }

# variable "cidr_range_east4_pod" {
#   type = string
# }

# variable "cidr_range_east4_service" {
#   type = string
# }



# # variable "project_ids" {
# #   description = "Project IDs of the service projects"
# #   type        = list(string)
# # }

# variable "staging_host_subnets" {
#   description = "Subnets to be shared with service project"
#   type        = list(string)
# }

# variable "staging_host_subnet_users" {
#   description = "Map of comma-delimited IAM-style members to which network user roles for subnets will be assigned."
#   type        = map(any)
# }





# variable "service_project_number" {
#   description = "Project number of the service account"
# }
# # variable "fw_rules" {
# #   description = "Details of Firewall rules for env host VPCs"
# #   type = list(object({
# #     name                    = string
# #     description             = string
# #     direction               = string
# #     priority                = number
# #     ranges                  = list(string)
# #     source_tags             = list(string)
# #     source_service_accounts = list(string)
# #     target_tags             = list(string)
# #     target_service_accounts = list(string)
# #     allow = list(object({
# #       protocol = string
# #       ports    = list(string)
# #     }))
# #     deny = list(object({
# #       protocol = string
# #       ports    = list(string)
# #     }))
# #     log_config = object({
# #       metadata = string
# #     })
# #   }))
# # }
