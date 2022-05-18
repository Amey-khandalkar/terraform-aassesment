module "gcs_buckets"  {
  source  = "terraform-google-modules/cloud-storage/google"
  project_id  = var.project_id
  names = var.names
  prefix = var.prefix 
  set_admin_roles = true
  versioning = {
    first = true
  }
  
}
