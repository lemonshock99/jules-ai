terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = file(var.gcp_auth_file)
}

resource "google_project" "project" {
  name            = var.project_name
  project_id      = var.project_id
  billing_account = var.billing_account
  folder_id       = var.folder_id
}

resource "google_project_service" "project" {
  for_each = toset(var.services)
  project  = google_project.project.project_id
  service  = each.key

  disable_on_destroy = false
}
