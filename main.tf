resource "google_compute_network" "vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
  description             = "VPC created by Terraform"
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "public" {
  name                     = var.public_subnet_name
  ip_cidr_range            = var.public_subnet_cidr
  region                   = var.region
  network                  = google_compute_network.vpc.self_link
  private_ip_google_access = false
  description              = "Public subnet"
}

resource "google_compute_subnetwork" "private" {
  name                     = var.private_subnet_name
  ip_cidr_range            = var.private_subnet_cidr
  region                   = var.region
  network                  = google_compute_network.vpc.self_link
  private_ip_google_access = true
  description              = "Private subnet with Private Google Access enabled"
}
