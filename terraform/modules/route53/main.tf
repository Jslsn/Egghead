data "aws_route53_zone" "certificate_zone" {
  name = var.domain
}

#Set up a route53 alias record for our site.
resource "aws_route53_record" "site_record" {
  zone_id = data.aws_route53_zone.certificate_zone.id
  name    = var.domain
  type    = "A"
  alias {
    name                   = var.bucket_regional_domain_name
    zone_id                = var.hosted_zone_id
    evaluate_target_health = true
  }
}

# Add CORS configuration to the existing bucket
resource "aws_s3_bucket_cors_configuration" "site_cors" {
  bucket = var.bucket_name

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "HEAD"]
    allowed_origins = ["https://${var.domain}"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}