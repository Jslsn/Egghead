module "bucket" {
  source      = "../../modules/s3"
  bucket_name = var.bucket_name
}

module "cloudfront" {
  source          = "../../modules/cloudfront"
  s3_endpoint     = module.bucket.bucket_regional_domain_name
  domain          = var.domain
  bucket_name     = module.bucket.bucket_name
  bucket_arn      = module.bucket.bucket_arn
  certificate_arn = var.certificate_arn
}

