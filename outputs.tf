output "network_name" {
  description = "Name of the created VPC"
  value       = google_compute_network.vpc.name
}

output "network_self_link" {
  description = "Self link of the VPC"
  value       = google_compute_network.vpc.self_link
}

output "public_subnet_self_link" {
  description = "Self link of the public subnet"
  value       = google_compute_subnetwork.public.self_link
}

output "private_subnet_self_link" {
  description = "Self link of the private subnet"
  value       = google_compute_subnetwork.private.self_link
}
