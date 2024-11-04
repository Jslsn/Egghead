variable "domain_name" {
  type        = string
  description = "Domain name for the website"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "bucket_regional_domain_name" {
  type        = string
  description = "The regional domain name of the bucket"
}

variable "bucket_hosted_zone_id" {
  type        = string
  description = "The hosted zone ID for the bucket"
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
} 