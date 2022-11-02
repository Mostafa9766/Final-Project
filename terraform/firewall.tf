resource "google_compute_firewall" "allow-ssh" {
  project     = var.project-id
  network     = var.vpc-name
  name        = "allow-ssh-1"
  direction = "INGRESS"
  description = "Creates firewall rule to allow ssh port from anywhere
  source_ranges = [ "0.0.0.0/0"]
  depends_on = [
    module.gcp-network
  ]
  allow {
    protocol  = "tcp"
    ports     = ["22","443"]
  }
}



resource "google_compute_firewall" "allow-jenkins" {
  project     = var.project-id
  network     = var.vpc-name
  name        = "allow-jenkins"
  direction = "INGRESS"
  description = "Creates firewall rule to allow connect to jenkins from any where "
  source_ranges = [ "0.0.0.0/0" ]
  depends_on = [
    module.gcp-network
  ]
  allow {
    protocol  = "tcp"
    ports     = ["8080"]
  }
}

