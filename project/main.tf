provider "google" {
  project = var.project
  region  = var.location # Or your preferred region
}


resource "google_service_account" "default" {
  account_id   = var.google_service_account_id
  display_name = var.service_account
}

resource "google_container_cluster" "primary" {
  name     = var.name
  location = var.location


  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count
  deletion_protection      = var.deletion_protection
  node_config {
    disk_size_gb = var.disk_size_gb
  }
}
