# project_id = "350514"
# host_project_id      = "network-350514"
names                = ["testing-bucket"]
prefix               = "cicd-terraform"
service_account_name = "testing-cicd"
service_account_id   = "test-cicd-966"





# fw_rules = [
#   {
#     name                    = "dai-allow-icmp-tf"
#     description             = "Allows ICMP connections from any source to any instance on the network."
#     direction               = "INGRESS"
#     priority                = 65534
#     ranges                  = ["0.0.0.0/0"]
#     source_tags             = null
#     source_service_accounts = null
#     target_tags             = []
#     target_service_accounts = null
#     allow = [{
#       protocol = "icmp"
#       ports    = null
#     }]
#     deny = []
#     log_config = {
#       metadata = "INCLUDE_ALL_METADATA"
#     }
#   },
#   {
#     name                    = "dai-allow-internal-tf"
#     description             = "Allows connections from any source in the network IP range to any instance on the network using all protocols."
#     direction               = "INGRESS"
#     priority                = 65534
#     ranges                  = ["10.128.0.0/9"]
#     source_tags             = null
#     source_service_accounts = null
#     target_tags             = []
#     target_service_accounts = null
#     allow = [{
#       protocol = "all"
#       ports    = null
#     }]
#     deny = []
#     log_config = {
#       metadata = "INCLUDE_ALL_METADATA"
#     }
#   },
#   {
#     name                    = "dai-allow-rdp-tf"
#     description             = "Allows RDP connections from any source to any instance on the network using port 3389."
#     direction               = "INGRESS"
#     priority                = 65534
#     ranges                  = ["0.0.0.0/0"]
#     source_tags             = null
#     source_service_accounts = null
#     target_tags             = []
#     target_service_accounts = null
#     allow = [{
#       protocol = "tcp"
#       ports    = ["3389"]
#     }]
#     deny = []
#     log_config = {
#       metadata = "INCLUDE_ALL_METADATA"
#     }
#   },
#   {
#     name                    = "dai-allow-ssh-tf"
#     description             = "Allows TCP connections from any source to any instance on the network using port 22."
#     direction               = "INGRESS"
#     priority                = 65534
#     ranges                  = ["0.0.0.0/0"]
#     source_tags             = null
#     source_service_accounts = null
#     target_tags             = []
#     target_service_accounts = null
#     allow = [{
#       protocol = "tcp"
#       ports    = ["22"]
#     }]
#     deny = []
#     log_config = {
#       metadata = "INCLUDE_ALL_METADATA"
#     }
#   },
#   {
#     name                    = "fw-allow-health-checks-tf"
#     description             = ""
#     direction               = "INGRESS"
#     priority                = 1000
#     ranges                  = ["35.191.0.0/16", "130.211.0.0/22"]
#     source_tags             = null
#     source_service_accounts = null
#     target_tags             = ["allow-health-check"]
#     target_service_accounts = null
#     allow = [{
#       protocol = "tcp"
#       ports    = ["80"]
#     }]
#     deny = []
#     log_config = {
#       metadata = "INCLUDE_ALL_METADATA"
#     }
#   }
# ]

# variable "primary_subnet_1_cidr" {
# type = map(string)
# default={
#     staging  = "10.215.1.192/26"
#     prod     = "10.237.1.192/26"
#     qa       = "10.245.1.192/26"
# }
# }

# variable "primary_subnet_2_cidr" {
# type = map(string)
# default={
#     staging  = "10.215.2.0/26"
#     prod     = "10.237.2.0/26"
#     qa       = "10.245.2.0/26"
# }
# }

# variable "cidr_range_central1_pod" {
# type = map(string)
# default={
#     staging  = "10.215.0.0/24"
#     prod     = "10.237.0.0/24"
#     qa       = "10.245.0.0/24"
# }
# }

# variable "cidr_range_central1_service" {
# type = map(string)
# default={
#     staging  = "10.215.1.0/25"
#     prod     = "10.237.1.0/25"
#     qa       = "10.245.1.0/25"
# }
# }

# variable "cidr_range_east4_pod" {
# type = map(string)
# default={
#     staging  = "10.215.3.0/24"
#     prod     = "10.237.3.0/24"
#     qa       = "10.245.3.0/24"
# }
# }

# variable "cidr_range_east4_service" {
# type = map(string)
# default={
#     staging  = "10.215.2.128/25"
#     prod     = "10.237.2.128/25"
#     qa       = "10.245.2.128/25"
# }
# }


# variable "staging_host_subnets" {
#   description = "Subnets to be shared with service project"
#   type        = list(string)
#   default     = []
# }





# /******************************************
#    Env Firewall Rules Variables
#  *****************************************/







