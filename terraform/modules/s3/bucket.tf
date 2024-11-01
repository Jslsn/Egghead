resource "aws_s3_bucket" "site_bucket" {
  bucket_prefix = var.bucket_name
  force_destroy = true
}

resource "aws_s3_bucket_policy" "site_policy" {
  bucket = aws_s3_bucket.site_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.site_bucket.arn}/site/*"
        Condition = {
          Bool = {
            "aws:SecureTransport" : "true"
          }
        }
      }
    ]
  })
}

resource "aws_s3_bucket_website_configuration" "site_config" {
  bucket = aws_s3_bucket.site_bucket.id

  index_document {
    suffix = "site/home.html"
  }

  error_document {
    key = "site/error.html"
  }
}

resource "aws_s3_bucket_public_access_block" "site_access" {
  bucket = aws_s3_bucket.site_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_server_side_encryption_configuration" "site_encryption" {
  bucket = aws_s3_bucket.site_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}



