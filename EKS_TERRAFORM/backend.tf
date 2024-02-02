terraform {
  backend "s3" {
    bucket = "uberclone-sunil2024" 
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}
