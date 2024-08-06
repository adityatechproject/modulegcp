resource "google_compute_instance" "vminstance" {
  name         = "instance-4"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "bootdisk"
      }
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }


  }
  tags = ["linux"]

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "1081417027233-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }

}
