output "bucket_name" {
  value       = aws_s3_bucket.site_bucket.id
  description = "The bucket name."
}

output "bucket_arn" {
  value       = aws_s3_bucket.site_bucket.arn
  description = "The bucket ARN."
}

output "bucket_hosted_zone_id" {
  value       = aws_s3_bucket.site_bucket.hosted_zone_id
  description = "The Route 53 Hosted Zone ID for the bucket's region"
}

