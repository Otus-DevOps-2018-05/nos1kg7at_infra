terraform {
  backend "gcs" {
    bucket  = "noskov-bucket-tst1"
    prefix  = "terraform/prod-state"
  }
}
