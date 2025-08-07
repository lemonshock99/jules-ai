variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "project_name" {
  description = "The name of the GCP project."
  type        = string
}

variable "billing_account" {
  description = "The billing account to associate with the project."
  type        = string
}

variable "org_id" {
  description = "The organization ID."
  type        = string
}

variable "region" {
  description = "The default region for GCP resources."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The default zone for GCP resources."
  type        = string
  default     = "us-central1-c"
}

variable "services" {
  description = "A list of services to enable on the project."
  type        = list(string)
  default = [
    "compute.googleapis.com",
    "storage.googleapis.com"
  ]
}
