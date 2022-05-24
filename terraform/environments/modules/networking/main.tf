# # Creates a VPC network with given subnet configurations
# module "vpc" {
#   source       = "terraform-google-modules/network/google"
#   project_id   = var.project_id
#   network_name = var.host_vpc_name
#   routing_mode = "GLOBAL"

#   subnets = [
#     {
#       subnet_name           = var.primary_subnet_name_central1
#       subnet_ip             = var.primary_subnet_1_cidr
#       subnet_region         = "us-central1"
#       subnet_private_access = "true"
#       subnet_flow_logs      = "true"
#       description           = "first subnet for this vpc"
#     },
#     {
#       subnet_name           = var.primary_subnet_name_east4
#       subnet_ip             = var.primary_subnet_2_cidr
#       subnet_region         = "us-east4"
#       subnet_private_access = "true"
#       subnet_flow_logs      = "true"
#       description           = "second subnet for this vpc"
#     }
#   ]

#   secondary_ranges = {
#     "${var.primary_subnet_name_central1}" = [
#       {
#         range_name    = var.secondary_subnet_central1_pod
#         ip_cidr_range = var.cidr_range_central1_pod
#       },
#       {
#         range_name    = var.secondary_subnet_central1_service
#         ip_cidr_range = var.cidr_range_central1_service
#       }
#     ]
#     "${var.primary_subnet_name_east4}" = [
#       {
#         range_name    = var.secondary_subnet_east4_pod
#         ip_cidr_range = var.cidr_range_east4_pod
#       },
#       {
#         range_name    = var.secondary_subnet_east4_service
#         ip_cidr_range = var.cidr_range_east4_service
#       }
#     ]
#   }
# }

# resource "time_sleep" "wait_30_seconds" {
#   depends_on = [module.vpc]

#   create_duration = "30s"
# }

# # Attaches service project to host project and gives subnet level access to mentioned users
# module "net-shared-vpc-access" {
#   source                  = "terraform-google-modules/network/google//modules/fabric-net-svpc-access"
#   host_project_id         = var.host_project_id
#   service_project_num     = var.service_project_number
#   project_ids     = var.project_ids
#   host_subnets            = var.staging_host_subnets
#   host_subnet_regions     = ["us-central1", "us-east4"]
#   host_subnet_users       = var.staging_host_subnet_users
#   host_service_agent_role = true
#   host_service_agent_users = ["serviceAccount:service-${var.host_project_number}@container-engine-robot.iam.gserviceaccount.com"]
#   depends_on = [module.vpc]
# }


# # resource "google_project_iam_member" "iam_binding_1" {
# #   project  = var.host_project_id
# #   for_each = toset(["roles/compute.networkUser", "roles/compute.securityAdmin", "roles/compute.admin", "roles/container.hostServiceAgentUser"])
# #   role     = each.key
# #   member   = "serviceAccount:service-${var.service_project_number}@container-engine-robot.iam.gserviceaccount.com"
# # }


# # resource "google_project_iam_member" "iam_binding_2" {
# #   project  = var.host_project_id
# #   for_each = toset(["roles/compute.admin", "roles/compute.networkUser", "roles/container.hostServiceAgentUser"])
# #   role     = each.key
# #   member   = "serviceAccount:${var.host_project_number}@cloudservices.gserviceaccount.com"
# # }

# # Creates firewall rules
# # module "firewall_rules" {
# #   source             = "terraform-google-modules/network/google//modules/firewall-rules"
# #   project_id = var.host_project_id
# #   network_name       = var.host_vpc_name
# #   rules              = var.fw_rules
# #   depends_on         = [module.vpc]
# # }


