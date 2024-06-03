resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.dataset_name
  location   = var.location
}
