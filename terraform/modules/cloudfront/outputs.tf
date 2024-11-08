output "cloudfront_distribution_id" {
  value       = aws_cloudfront_distribution.site_distribution.id
  description = "ID for CloudFront distribution"
}

output "cloudfront_domain_name" {
  value       = aws_cloudfront_distribution.site_distribution.domain_name
  description = "Domain name for CloudFront distribution"
}

output "cloudfront_zone_id" {
  value       = aws_cloudfront_distribution.site_distribution.hosted_zone_id
  description = "Hosted zone for CloudFront distribution"
}


