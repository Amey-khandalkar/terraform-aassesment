module "bucket" {
  source     = "../modules/buckets"
  names      = var.names
  project_id = var.project_id
  prefix     = var.prefix
}
module "serviceaccount" {
  source               = "../modules/serviceaccounts"
  service_account_id   = var.service_account_id
  service_account_name = var.service_account_name
  project_id           = var.project_id

}

# module "networking" {
#   source = "../modules/networking"
#   # project_id = var.project_id

#   host_vpc_name = "test-vpc"


#   primary_subnet_1_cidr       = var.primary_subnet_1_cidr
#   primary_subnet_2_cidr       = var.primary_subnet_2_cidr
#   cidr_range_central1_pod     = var.cidr_range_central1_pod
#   cidr_range_central1_service = var.cidr_range_central1_service
#   cidr_range_east4_pod        = var.cidr_range_east4_pod
#   cidr_range_east4_service    = var.cidr_range_east4_service
#   host_project_id             = var.host_project_id
#   project_id          = var.project_id
#   service_project_number      = var.service_project_number
#   project_ids         = var.project_ids
#   # host_project_number         = var.host_project_number


#   primary_subnet_name_central1 = "sb-test-us-central1"
#   primary_subnet_name_east4    = "sb-test-us-east4"

#   secondary_subnet_central1_pod     = "sec-sb-test-us-central1-pod"
#   secondary_subnet_central1_service = "sec-sb-test-us-central1-service"

#   secondary_subnet_east4_pod     = "sec-sb-test-us-east4-pod"
#   secondary_subnet_east4_service = "sec-sb-test-us-east4-service"

#   # service_project_ids       = [module.project.service_project_id]
#   staging_host_subnets      = var.staging_host_subnets
#   staging_host_subnet_users = var.staging_host_subnet_users

#   # env                                = var.env
#   # fw_rules = var.fw_rules




# }





