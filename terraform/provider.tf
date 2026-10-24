provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile != "" ? var.aws_profile : null

  default_tags {
    tags = {
      Project     = "TravelMemory-MERN"
      ManagedBy   = "Terraform"
      Environment = "assignment-lab"
    }
  }
}
