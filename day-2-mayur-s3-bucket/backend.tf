terraform {
  backend "s3" {
    bucket = "day-2-mayur-s3-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
