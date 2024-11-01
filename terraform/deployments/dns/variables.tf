variable "domain_name" {
  type        = string
  description = "Domain name for the website"
}

variable "state_bucket" {
  type        = string
  description = "S3 bucket containing terraform state"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
} 