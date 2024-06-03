provider "google" {
  credentials = file(var.credentials_file_path)
  project = var.project_id
  region  = var.region
}


module "storage" {
  source       = "./Modules/storage"
  bucket_name  = var.bucket_name
  location     = var.region
  kms_key_name = var.kms_key_name
}

module "network" {
  source      = "./Modules/network"
  region = var.region
  network_name = var.network_name
  subnet_name  = var.subnet_name
  cidr_block   = var.cidr_block
}

module "bigquery" {
  source       = "./Modules/bigquery"
  dataset_name = var.dataset_name
  location     = var.region
}

module "iam" {
  source          = "./Modules/iam"
  project_id      = var.project_id  # Add this line
  roles           = var.roles
  service_account = var.service_account
  kms_key_name    = var.kms_key_name  # Ensure this line is included
}
