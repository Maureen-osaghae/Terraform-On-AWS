variable "aws_region" {
  description = "us-east-1"
  type        = string
  default     = "us-east-1"
}

variable "aws_s3_bucket_name" {
  description = "The unique name of the AWS bucket."
  type        = string
  default     = "maureen-osahage-9900"
}

variable "aws_tagging" {
  description = "Resource tags."
  type        = map(string)
  default = {
    "Team"        = "security",
    "Environment" = "dev"
  }
}

