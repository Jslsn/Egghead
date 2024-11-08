variable "domain" {
  type        = string
  description = "The domain for the site."
}

variable "aws_region" {
  type        = string
  description = "AWS region for the S3 website endpoint"
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "cloudfront_domain_name" {
  type        = string
  description = "Domain name for CloudFront distribution."
}
variable "cloudfront_zone_id" {
  type        = string
  description = "Hosted zone for CloudFront distribution"
}
