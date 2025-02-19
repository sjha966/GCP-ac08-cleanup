resource "google_storage_bucket" "terraform_state" {
  name     = "ac08-terraform-state"
  location = "EU"
}