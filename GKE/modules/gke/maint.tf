provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1

  networking_mode = "VPC_NATIVE"
  network    = var.network
  subnetwork = var.subnetwork

  ip_allocation_policy {}
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-node-pool"
  cluster    = google_container_cluster.gke_cluster.name
  node_count = 2  # Reduce if needed

  node_config {
    machine_type = "e2-medium"  
    disk_size_gb = 50           
    disk_type    = "pd-standard"  
  }
}

