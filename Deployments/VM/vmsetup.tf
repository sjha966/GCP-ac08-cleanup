# Provider configuration
provider "google" {
  project = "ica-shared-vpc-host-project"
  region  = "europe-west4"
}

# Data source to fetch the existing VPC
data "google_compute_network" "vpc" {
  name    = "vpc-prod-shared-dev-euw4"
  project = "ica-shared-vpc-host-project"
}

# Data source to fetch the subnet
data "google_compute_subnetwork" "subnet" {
  name    = "vpc-prod-shared-dev-euw4-subnet-0002" # Replace with the actual subnet name from vpc-setup.tf or GCP Console
  project = "ica-shared-vpc-host-project"
  region  = "europe-west4"
}

# Ubuntu 22.04 LTS VM
resource "google_compute_instance" "ubuntu_vm" {
  name         = "ubuntu-vm"
  machine_type = "e2-medium"
  zone         = "europe-west4-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts" # Use Ubuntu 22.04 LTS as a default, supported image
    }
  }

  network_interface {
    network    = data.google_compute_network.vpc.self_link
    subnetwork = data.google_compute_subnetwork.subnet.self_link
  }

  metadata_startup_script = "echo 'Ubuntu VM' > /tmp/vm.txt"
}

# Rocky Linux 8 VM (CentOS 7 replacement)
resource "google_compute_instance" "rocky_vm" {
  name         = "rocky-vm"
  machine_type = "e2-medium"
  zone         = "europe-west4-a"

  boot_disk {
    initialize_params {
      image = "rocky-linux-cloud/rocky-linux-8" # Use Rocky Linux 8 as a supported CentOS alternative
    }
  }

  network_interface {
    network    = data.google_compute_network.vpc.self_link
    subnetwork = data.google_compute_subnetwork.subnet.self_link
  }

  metadata_startup_script = "echo 'Rocky Linux VM' > /tmp/vm.txt"
}

# Debian 12 VM
resource "google_compute_instance" "debian_vm" {
  name         = "debian-vm"
  machine_type = "e2-medium"
  zone         = "europe-west4-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12" # Use Debian 12 as a default, supported image
    }
  }

  network_interface {
    network    = data.google_compute_network.vpc.self_link
    subnetwork = data.google_compute_subnetwork.subnet.self_link
  }

  metadata_startup_script = "echo 'Debian VM' > /tmp/vm.txt"
}