variable "bucket_name" {
  type        = string
  description = "The name for the bucket being created"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "domain" {
  type        = string
  description = "Domain name for the site"
}

variable "certificate_arn" {
  type        = string
  description = "ARN for the AWS ACM SSL certificate for domain"
}
