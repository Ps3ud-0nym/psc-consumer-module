variable "project_id" {
  description = "GCP Project Id"
  default     = ""
}
variable "network" {
  description = "Network Name"
  default     = ""
}
variable "subnetwork_name" {
  description = "Subnetwork Name"
  default     = ""
}
variable "primary_region" {
  description = "primary_region"
  default     = ""
}
variable "service_attachment_name" {
  description = "Service Attachment Name"
  default     = ""
}
variable "producer_state_bucket" {
  description = "Producer State Bucket"
  default     = ""
}
variable "producer_state_bucket_prefix" {
  description = "Producer State Bucket Prefix"
  default     = ""
}
variable "consumer_ip_address_name" {
  description = "Consumer IP Address Name"
  default     = ""
}
variable "consumer_forwarding_rule_name" {
  description = "Consumer Forwarding Rule Name"
  default     = ""
}
variable "private_zone_name" {
  description = "DNS private zone name"
  default     = ""
}
variable "private_zone_dns_name" {
  description = "DNS private zone DNS name"
  default     = ""
}
variable "private_zone_a_record" {
  description = "A Record that maps to producer forwarding rule IP address"
  default     = ""
}
variable "vpc_id" {
  description = "VPC ID"
  default     = ""
}
# variable "producer_forwarding_rule_ip_address" {
#   description = "Producer Forwarding Rule IP Address"
#   default     = ""
# }
