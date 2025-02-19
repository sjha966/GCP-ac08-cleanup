terraform {
  backend "gcs" {
    bucket = "ac08-terraform-state"
    prefix = "terraform/state"
  }
}