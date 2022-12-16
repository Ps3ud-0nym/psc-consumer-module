# Use this to get remote state from modules
data "terraform_remote_state" "producer-state" {
        backend = "gcs"
        config = {
          bucket  = var.producer_state_bucket
          prefix  = var.producer_state_bucket_prefix
          # access_token = ""
        }
}

resource "google_compute_address" "psc_ilb_consumer_address" {
  name         = var.consumer_ip_address_name
  region       = var.primary_region
  project      = var.project_id
  subnetwork   = var.subnetwork_name
  address_type = "INTERNAL"
}

resource "google_compute_forwarding_rule" "psc_ilb_consumer" {
  name                  = var.consumer_forwarding_rule_name
  region                = var.primary_region
  project               = var.project_id
  target                = data.terraform_remote_state.producer-state.outputs.service_attachment_id
  load_balancing_scheme = "" # need to override EXTERNAL default when target is a service attachment
  network               = var.network
  subnetwork            = ""
  ip_address            = google_compute_address.psc_ilb_consumer_address.id
}