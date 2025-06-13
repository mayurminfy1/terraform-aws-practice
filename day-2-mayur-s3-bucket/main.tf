resource "aws_s3_bucket" "day_2_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.day_2_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
