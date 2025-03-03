module "gke" {
  source       = "./modules/gke"
  cluster_name = var.cluster_name
  region       = var.region
  network      = var.network
  subnetwork   = var.subnetwork
  node_count   = var.node_count
  machine_type = var.machine_type
  project_id   = "feisty-gateway-452608-c9"
}
