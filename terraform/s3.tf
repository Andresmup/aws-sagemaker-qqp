resource "aws_s3_bucket" "bucket_data_storage" {
  bucket        = var.bucket_name
  force_destroy = true
  lifecycle {
    prevent_destroy = false
  }
}

