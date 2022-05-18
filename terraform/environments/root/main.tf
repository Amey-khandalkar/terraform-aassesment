module "bucket"{
  source = "../modules/buckets"
  names             = var.names
  project_id        = var.project_id
  prefix            = var.prefix
  admin             = var.admin
  
}




