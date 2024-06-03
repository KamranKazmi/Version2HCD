resource "google_compute_network" "vpc_network" {
  name = var.network_name
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.subnet_name
  ip_cidr_range = var.cidr_block
  network       = google_compute_network.vpc_network.id
  region        = var.region
}
