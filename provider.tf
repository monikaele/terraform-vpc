provider "google" {
  project = var.project_id
  region  = var.region
  # Credentials should be provided via the GOOGLE_APPLICATION_CREDENTIALS environment variable
  # export GOOGLE_APPLICATION_CREDENTIALS="/path/to/service-account.json"
}
