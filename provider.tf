
variable "project" {

}



provider "google" {
  credentials = "account.json"
  project     = var.project
  region      = "europe-west2"
}