module "dns" {
  source = "../../modules/route53"

  domain       = var.domain_name
  aws_region   = var.aws_region
  bucket_name  = var.bucket_name
} 