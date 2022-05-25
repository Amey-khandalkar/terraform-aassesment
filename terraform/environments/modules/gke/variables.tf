
variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "cluster_name" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "region" {
  description = "The project ID to host the cluster in"
  type        = string
}

variable "zones" {
  description = "The project ID to host the cluster in"
  type        = list(string)
}

variable "network" {
  description = "The VPC network to host the cluster in"
  type        = string

}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in"
  type        = string

}

variable "ip_range_pods" {
  description = "The secondary ip range to use for pods"
  type        = string

}

variable "ip_range_services" {
  description = "The secondary ip range to use for services"
  type        = string

}

variable "cluster_autoscaling" {
  type = object({
    enabled             = bool
    autoscaling_profile = string
    min_cpu_cores       = number
    max_cpu_cores       = number
    min_memory_gb       = number
    max_memory_gb       = number
    gpu_resources = list(object({
      resource_type = string
      minimum       = number
      maximum       = number
    }))
  })
  default = {
    enabled             = false
    autoscaling_profile = "BALANCED"
    max_cpu_cores       = 0
    min_cpu_cores       = 0
    max_memory_gb       = 0
    min_memory_gb       = 0
    gpu_resources       = []
  }
  description = "Cluster autoscaling configuration. See [more details](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#clusterautoscaling)"
}
