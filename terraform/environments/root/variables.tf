variable "project_id" {
  type    = string
  default = "cicd-336010"
}
variable "project_ids" {
  type    = list(string)
  default = ["cicd-336010"]
}
# variable "host_project_id" {
#   type = string
# }
variable "names" {
  type = list(string)
}
variable "prefix" {
  type = string
}
# variable "service_project_number" {
#   type    = string
#   default = "336010"

# }
# variable "host_project_number" {
#   type    = string
#   default = "350514"

# }

variable "service_account_id" {
  type = string
}
variable "service_account_name" {
  type = string
}
# variable "staging_host_subnet_users" {
#   description = "Map of comma-delimited IAM-style members to which network user roles for subnets will be assigned."
#   type        = map(any)
#   default     = {}
# }
# variable "primary_subnet_1_cidr" {
#   type    = string
#   default = "10.215.1.192/26"

# }

# variable "primary_subnet_2_cidr" {
#   type    = string
#   default = "10.215.2.0/26"

# }

# variable "cidr_range_central1_pod" {
#   type    = string
#   default = "10.215.0.0/24"

# }

# variable "cidr_range_central1_service" {
#   type    = string
#   default = "10.215.1.0/25"

# }

# variable "cidr_range_east4_pod" {
#   type    = string
#   default = "10.215.3.0/24"

# }

# variable "cidr_range_east4_service" {
#   type    = string
#   default = "10.215.2.128/25"

# }


# variable "staging_host_subnets" {
#   description = "Subnets to be shared with service project"
#   type        = list(string)
#   default     = []
# }
# variable "host_project_id" {
#   description = "Subnets to be shared with service project"
#   type        = string
#   default     = "network-350514"
# }

# variable "staging_host_subnet_users" {
#   description = "Map of comma-delimited IAM-style members to which network user roles for subnets will be assigned."
#   type        = map(any)
#   default     = {}
# }

