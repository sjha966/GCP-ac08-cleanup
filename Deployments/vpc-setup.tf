provider "google" {
  project = "ica-shared-vpc-host-project"
  region  = "europe-west4"
}

resource "google_compute_network" "vpc_network" {
  name                    = "vpc-prod-shared-dev-euw4-test"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "subnet" {
  name          = "test-subnet-001"
  ip_cidr_range = "10.112.89.0/24"
  region        = "europe-west4"
  network       = google_compute_network.vpc_network.id
}