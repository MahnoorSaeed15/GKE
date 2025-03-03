output "cluster_id" {
  description = "The ID of the GKE cluster."
  value       = google_container_cluster.gke_cluster.id
}

output "endpoint" {
  description = "The endpoint of the GKE cluster."
  value       = google_container_cluster.gke_cluster.endpoint
}

output "node_pool_id" {
  description = "The ID of the node pool."
  value       = google_container_node_pool.primary_nodes.id
}
