variable "s3_endpoint" {
  type        = string
  description = "S3 bucket endpoint"
}

variable "domain" {
  type        = string
  description = "Domain name for the site"
}

variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "bucket_arn" {
  type        = string
  description = "ARN of the S3 bucket"
}

variable "certificate_arn" {
  type        = string
  description = "ARN for the AWS ACM SSL certificate for domain"
}
