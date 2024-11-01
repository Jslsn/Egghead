output "bucket_regional_domain_name" {
  value       = module.s3.bucket_regional_domain_name
  description = "The regional domain name of the bucket"
}

output "bucket_hosted_zone_id" {
  value       = module.s3.bucket_hosted_zone_id
  description = "The Route 53 Hosted Zone ID for the bucket's region"
}

output "bucket_name" {
  value       = module.s3.bucket_name
  description = "The name of the created bucket"
}

