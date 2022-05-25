# Creates a VPC network with given subnet configurations
module "vpc" {
  source       = "terraform-google-modules/network/google"
  project_id   = var.project_id
  network_name = var.host_vpc_name
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name           = var.primary_subnet_name_central1
      subnet_ip             = var.primary_subnet_1_cidr
      subnet_region         = "us-central1"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
      description           = "first subnet for this vpc"
    },
    {
      subnet_name           = var.primary_subnet_name_east4
      subnet_ip             = var.primary_subnet_2_cidr
      subnet_region         = "us-east4"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
      description           = "second subnet for this vpc"
    }
  ]

  secondary_ranges = {
    "${var.primary_subnet_name_central1}" = [
      {
        range_name    = var.secondary_subnet_central1_pod
        ip_cidr_range = var.cidr_range_central1_pod
      },
      {
        range_name    = var.secondary_subnet_central1_service
        ip_cidr_range = var.cidr_range_central1_service
      }
    ]
    "${var.primary_subnet_name_east4}" = [
      {
        range_name    = var.secondary_subnet_east4_pod
        ip_cidr_range = var.cidr_range_east4_pod
      },
      {
        range_name    = var.secondary_subnet_east4_service
        ip_cidr_range = var.cidr_range_east4_service
      }
    ]
  }
}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [module.vpc]

  create_duration = "30s"
}

