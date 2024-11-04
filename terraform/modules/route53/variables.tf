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
