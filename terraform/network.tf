resource "google_compute_network" "gitops_gke_network" {
  name = "vpc-gitops-gke-network"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "gitops_gke_subnetwork_us_central1" {
  name          = "vpc-gitops-gke-subnetwork-us-central1"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.gitops_gke_network.id
#   secondary_ip_range {
#     range_name    = "tf-test-secondary-range-update1"
#     ip_cidr_range = "192.168.10.0/24"
#   }
}





resource "google_compute_address" "internal_with_subnet_and_address" {
  name         = "git-address"
  subnetwork   = google_compute_subnetwork.gitops_gke_subnetwork_us_central1.id
  address_type = "INTERNAL"
  address      = "10.2.80.80"
  region       = "us-central1"
}

# resource "google_compute_address" "external_ip_argocd" {
#   name         = "argocd-external-address"
#   address_type = "EXTERNAL"
# }

# output external_ip_argocd {
#   value       = google_compute_address.external_ip_argocd.address
#   sensitive   = false
#   description = "description"
#   depends_on  = []
# }
