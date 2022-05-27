provider "kubernetes" {
  host = "https://${module.gke.endpoint}"
  #   token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}


module "gke" {
  source                            = "terraform-google-modules/kubernetes-engine/google//modules/beta-private-cluster"
  project_id                        = var.project_id
  name                              = var.cluster_name
  region                            = var.region
  zones                             = var.zones
  network                           = var.network
  subnetwork                        = var.subnetwork
  ip_range_pods                     = var.ip_range_pods
  ip_range_services                 = var.ip_range_services
  network_project_id                = var.project_id
  kubernetes_version                = "1.21.10-gke.2000"
  http_load_balancing               = false
  regional                          = false
  network_policy                    = false
  horizontal_pod_autoscaling        = true
  enable_private_endpoint           = false
  enable_private_nodes              = false
  remove_default_node_pool          = true
  gce_pd_csi_driver                 = false
  disable_legacy_metadata_endpoints = true
  enable_identity_service           = false
  enable_shielded_nodes             = false

  node_pools = [
    {
      name           = "default-pool"
      machine_type   = "e2-standard-4"
      node_locations = "${var.region}-a"
      autoscaling    = true
      #node_count         = 2
      min_count          = 1
      max_count          = 20
      initial_node_count = 1
      disk_type          = "pd-standard"
      disk_size_gb       = 100
      image_type         = "COS"
      local_ssd_count    = "0"
      auto_repair        = true
      auto_upgrade       = true
      #      service_account    = ""
      sandbox_enabled             = false
      cpu_manager_policy          = "static"
      cpu_cfs_quota               = true
      preemptible                 = false
      enable_integrity_monitoring = true
      enable_secure_boot          = false
      maintenance_recurrence      = ""

    },
  ]
  node_pools_oauth_scopes = {
    all = []

    default-pool = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/cloud-platform.read-only",
    ]
  }
}
