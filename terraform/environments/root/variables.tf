variable "project_id" {
  type    = string
  default = "cicd-336010"
}

variable "names" {
  type = list(string)
}
variable "prefix" {
  type = string
}

variable "service_account_id" {
  type = string
}
variable "service_account_name" {
  type = string
}
variable "region" {
  type    = string
  default = "us-central1"
}
variable "zone" {
  type    = list(string)
  default = ["us-central1-a", "us-central1-b", "us-central1-c"]
}
variable "cluster_name" {
  type    = string
  default = "test-cluster"
}
variable "primary_subnet_1_cidr" {
  type    = string
  default = "10.215.1.192/26"

}
variable "vpc_name" {
  type    = string
  default = "test-network"

}

variable "primary_subnet_2_cidr" {
  type    = string
  default = "10.215.2.0/26"

}

variable "cidr_range_central1_pod" {
  type    = string
  default = "10.215.0.0/24"

}

variable "cidr_range_central1_service" {
  type    = string
  default = "10.215.1.0/25"

}

variable "cidr_range_east4_pod" {
  type    = string
  default = "10.215.3.0/24"

}

variable "cidr_range_east4_service" {
  type    = string
  default = "10.215.2.128/25"

}




