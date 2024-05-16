resource "google_compute_instance" "default" {
name = "test"
machine_type = "e2-micro"
zone = "us-south1-a"

boot_disk {
  initialize_params{
    image ="debian-12-bookworm-v20240515"
  }
}

network_interface {
  network= "default"
}

service_account {
  scopes = ["userinfo-email", "compute-ro", "storage-ro"]
}
  
}
