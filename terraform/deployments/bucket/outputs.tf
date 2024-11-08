output "bucket_regional_domain_name" {
  value       = module.bucket.bucket_regional_domain_name
  description = "The regional domain name of the bucket"
}

output "bucket_hosted_zone_id" {
  value       = module.bucket.bucket_hosted_zone_id
  description = "The Route 53 Hosted Zone ID for the bucket's region"
}

output "bucket_name" {
  value       = module.bucket.bucket_name
  description = "The name of the created bucket"
}

output "cloudfront_domain_name" {
  value       = module.cloudfront.cloudfront_domain_name
  description = "Domain name for CloudFront distribution."
}

output "cloudfront_zone_id" {
  value       = module.cloudfront.cloudfront_zone_id
  description = "Hosted zone for CloudFront distribution"
}
