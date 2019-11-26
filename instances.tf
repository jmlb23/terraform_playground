resource "google_compute_disk" "debian-disk" {
  zone = "europe-west2-a"
  name  = "debian-disk"
  image = "debian-10-buster-v20191121"
}

resource "google_compute_instance" "my-machine" {
  deletion_protection = false
  name                = "my-machine"
  machine_type        = "f1-micro"
  zone                = "europe-west2-a"

  network_interface {
    network = "app1-network"
  }
  boot_disk {
    source      = "debian-disk"
    auto_delete = "false"
  }
}



