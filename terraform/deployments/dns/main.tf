module "dns" {
  source = "../../modules/route53"

  domain                      = var.domain_name
  bucket_regional_domain_name = data.terraform_remote_state.s3.outputs.bucket_regional_domain_name
  hosted_zone_id              = data.terraform_remote_state.s3.outputs.bucket_hosted_zone_id
  bucket_name                 = data.terraform_remote_state.s3.outputs.bucket_name
} 