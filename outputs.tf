output "website_url" {
  value = "https://${aws_cloudfront_distribution.website.domain_name}"
}

output "s3_website_url" {
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
  description = "Direct S3 website URL (not publicly accessible)"
}