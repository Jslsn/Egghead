variable "s3_endpoint" {
  type        = string
  description = "S3 website endpoint"
}

variable "domain" {
  type        = string
  description = "Domain name for the site"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
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
