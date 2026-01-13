resource "aws_s3_bucket" "site_bucket" {
  bucket_prefix = var.bucket_name
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "site_access" {
  bucket = aws_s3_bucket.site_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "site_ownership" {
  bucket = aws_s3_bucket.site_bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "site_encryption" {
  bucket = aws_s3_bucket.site_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}



