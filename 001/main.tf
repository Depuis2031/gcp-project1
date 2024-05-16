provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "default" {
  name         = "terraform-instance"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "Ubuntu"
    }
  }

  network_interface {
    network = "default"
    
    access_config {
      // Ephemeral IP
    }
  }

 # metadata = {
  #  ssh-keys = "admin:${file("~/.ssh/id_rsa.pub")}"
 #}# 
}
