provider "google" {
  project     = "feisty-gateway-452608-c9"
  region      = "us-central1"
  credentials = file("terraform-key.json")  
}
