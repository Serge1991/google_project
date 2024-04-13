variable "project" {
  type = string
}

variable "google_service_account_id" {
  type = string
}

variable "service_account" {
  type = string
}

variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "initial_node_count" {
  type = number
}
variable "remove_default_node_pool" {
  type = bool
}
