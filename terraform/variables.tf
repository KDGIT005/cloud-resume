variable "aws_region" {
  description = "The AWS region to deploy resources to"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket for hosting the resume website"
  type        = string
}

variable "use_custom_domain" {
  description = "Whether to use a custom domain name for the website"
  type        = bool
  default     = false
}

variable "domain_name" {
  description = "The custom domain name for the website (e.g., resume.example.com)"
  type        = string
  default     = ""
}

variable "certificate_arn" {
  description = "The ARN of the ACM certificate for the custom domain (must be in us-east-1 for CloudFront)"
  type        = string
  default     = ""
} 