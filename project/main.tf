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

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count
}
