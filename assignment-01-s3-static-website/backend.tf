terraform {
  backend "s3" {
    bucket = "day-2-mayur-s3-bucket"
    key    = "assignment-01/terraform.tfstate"
    region = "ap-south-1"
    profile = "AdminAccess"
  }
}
