terraform {
  backend "gcs" {
    bucket = "teraformstates"
  }
}