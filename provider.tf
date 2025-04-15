# Specify the provider (GCP, AWS, Azure)
provider "google" {
  #credentials = "${file("credentials.json")}"
  project = "ica-shared-vpc-host-project"
  region  = "europe-west4"
}