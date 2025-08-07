Create Aws S3 Bucket

    terraform {
      required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "6.7.0"
        }
      }
    }
    
    provider "aws" {
         
            region = us-east-1
    }
    
    resource "aws_s3_bucket" "example" {
      bucket = "maureen-osaghae-2222"
    
      tags = {
        Name        = "Demo-S3 Bucket"
        Environment = "Dev"
      }
    }

