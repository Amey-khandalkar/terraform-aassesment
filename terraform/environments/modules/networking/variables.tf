
variable "project_id" {
  description = "ID of the project which will contain host VPC"
  type        = string
}


variable "host_vpc_name" {
  description = "Name of the host VPC"
  type        = string
}

variable "primary_subnet_name_central1" {
  description = ""
  type        = string
}

variable "primary_subnet_name_east4" {
  description = ""
  type        = string
}

variable "secondary_subnet_central1_pod" {
  description = ""
  type        = string
}

variable "secondary_subnet_central1_service" {
  description = ""
  type        = string
}

variable "secondary_subnet_east4_pod" {
  description = ""
  type        = string
}

variable "secondary_subnet_east4_service" {
  description = ""
  type        = string
}


variable "primary_subnet_1_cidr" {
  type = string
}

variable "primary_subnet_2_cidr" {
  type = string
}

variable "cidr_range_central1_pod" {
  type = string
}

variable "cidr_range_central1_service" {
  type = string
}

variable "cidr_range_east4_pod" {
  type = string
}

variable "cidr_range_east4_service" {
  type = string
}




