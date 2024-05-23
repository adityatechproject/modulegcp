resource "google_storage_bucket" "terraform-423501_bucket" {
  name                     = "terraform-423501_test"
  project                  = "terraform-423501"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"

}