output "website_bucket_name" {
  description = "Name of the S3 bucket used for hosting the website"
  value       = aws_s3_bucket.website_bucket.id
}

output "website_endpoint" {
  description = "S3 website endpoint"
  value       = aws_s3_bucket_website_configuration.website_config.website_endpoint
}

output "cloudfront_distribution_id" {
  description = "ID of the CloudFront distribution"
  value       = aws_cloudfront_distribution.website_distribution.id
}

output "cloudfront_domain_name" {
  description = "Domain name of the CloudFront distribution"
  value       = aws_cloudfront_distribution.website_distribution.domain_name
}

output "website_url" {
  description = "URL of the website"
  value       = var.use_custom_domain ? "https://${var.domain_name}" : "https://${aws_cloudfront_distribution.website_distribution.domain_name}"
} 