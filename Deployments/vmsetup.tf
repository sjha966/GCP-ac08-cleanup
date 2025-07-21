
provider "google" {
  project = "ica-shared-vpc-host-project"
  region  = "europe-west4"
}

resource "google_compute_instance" "ubuntu_vm" {
  name         = "ubuntu-vm"
  machine_type = "e2-medium"
  zone         = "europe-west4-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "vpc-prod-shared-dev-euw4-test"
    access_config {}
  }
}

resource "google_compute_instance" "centos_vm" {
  name         = "centos-vm"
  machine_type = "e2-medium"
  zone         = "europe-west4-a"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
    }
  }

  network_interface {
    network = "vpc-prod-shared-dev-euw4-test"
    access_config {}
  }
}

resource "google_compute_instance" "debian_vm" {
  name         = "debian-vm"
  machine_type = "e2-medium"
  zone         = "europe-west4-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "vpc-prod-shared-dev-euw4-test"
    access_config {}
  }
}
