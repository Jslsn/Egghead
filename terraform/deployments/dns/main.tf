module "dns" {
  source = "../../modules/route53"

  domain                 = var.domain
  aws_region             = var.aws_region
  bucket_name            = var.bucket_name
  cloudfront_domain_name = var.cloudfront_domain_name
  cloudfront_zone_id     = var.cloudfront_zone_id
} 