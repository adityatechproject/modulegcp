# module "vm" {

#   source       = "git@github.com:adityatechproject/modulegcp.git"

#   //source       = "../../Modulegcp/vm"

# }


resource "google_storage_bucket" "terraform-423501_bucket" {
  name                     = "terraform-423501_test"
  location                 = "US"
  force_destroy            = true
  public_access_prevention = "enforced"

}