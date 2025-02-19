# Specify the provider (GCP, AWS, Azure)
provider "google" {
#credentials = "${file("credentials.json")}"
project = "ac08-p-sharedvpc-0001"
region = "europe-west4"
}