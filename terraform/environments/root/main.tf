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

module "networking" {
  source                            = "../modules/networking"
  host_vpc_name                     = var.vpc_name
  project_id                        = var.project_id
  primary_subnet_1_cidr             = var.primary_subnet_1_cidr
  primary_subnet_2_cidr             = var.primary_subnet_2_cidr
  cidr_range_central1_pod           = var.cidr_range_central1_pod
  cidr_range_central1_service       = var.cidr_range_central1_service
  cidr_range_east4_pod              = var.cidr_range_east4_pod
  cidr_range_east4_service          = var.cidr_range_east4_service
  primary_subnet_name_central1      = "sb-test-us-central1"
  primary_subnet_name_east4         = "sb-test-us-east4"
  secondary_subnet_central1_pod     = "sec-sb-test-us-central1-pod"
  secondary_subnet_central1_service = "sec-sb-test-us-central1-service"
  secondary_subnet_east4_pod        = "sec-sb-test-us-east4-pod"
  secondary_subnet_east4_service    = "sec-sb-test-us-east4-service"

}



module "gke_cluster" {
  source     = "../modules/gke"
  project_id = var.project_id
  region     = var.region
  zones      = var.zone

  cluster_name = var.cluster_name
  #  cluster_name_suffix = var.cluster_name_suffix
  network           = module.networking.network_name
  subnetwork        = module.networking.subnets_names[0]
  ip_range_pods     = module.networking.subnets_secondary_ranges[0][0].range_name
  ip_range_services = module.networking.subnets_secondary_ranges[0][1].range_name

}










