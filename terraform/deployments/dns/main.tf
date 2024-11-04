module "dns" {
  source = "../../modules/route53"

  domain                      = var.domain_name
  bucket_regional_domain_name = var.bucket_regional_domain_name
  hosted_zone_id             = var.bucket_hosted_zone_id
  bucket_name                = var.bucket_name
} 