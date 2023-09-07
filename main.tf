provider "aws" {
  region = "ap-south-1"
}

module "cloudfront_s3_website_without_domain" {
  source             = "./module"
  domain_name        = "websitehostingsupriya" // Any random identifier for s3 bucket name
  use_default_domain = true
  upload_sample_file = true
}

# output "mod2_domain" {
#   value = module.cloudfront_s3_website_without_domain.cloudfront_domain_name
# }