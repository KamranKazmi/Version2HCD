resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = "us-south1"
  encryption {
    default_kms_key_name = var.kms_key_name
  }
}
