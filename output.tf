# Copy to output.tf (option 1)

output "s3_bucket_id" {
  description = "Outputs S3 bucket id"
  value       = "Bucket Id: ${aws_s3_bucket.example.id}"
}

output "s3_bucket_arn" {
  description = "Outputs S3 bucket arn"
  value       = "Bucket ARN: ${aws_s3_bucket.example.arn}"
}

output "s3_bucket_domain" {
  description = "Outputs S3 bucket domain"
  value       = "Bucket Domain: ${aws_s3_bucket.example.bucket_domain_name}"
}
