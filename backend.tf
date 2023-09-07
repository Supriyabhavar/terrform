terraform {
  backend "s3" {
    bucket         = "s3backendbucket-05"
    key            = "terraform-tf" #terraform.tfstate
    region         = "us-east-2" # Specify the appropriate region
#     encrypt        = true        # Enable server-side encryption
    dynamodb_table = "terraform-statelocks"
    
  }
}