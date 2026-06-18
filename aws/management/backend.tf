terraform {
  backend "s3" {
    bucket       = "mackhomelab-terraform-state"
    key          = "aws/management/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    profile      = "general"
  }
}