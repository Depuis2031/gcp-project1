
variable "project_id" {}
variable "region" {
  default = "europe-west9"
}
variable "zone" {
  default = "europe-west9-a "
}
variable "project_id" {
   type        = string
  default      = "advance-terraform-406410"
  description = Google Cloud Project ID
}