variable "app_name" {
  type        = string
  description = "Application Name"
  default     = "qqp-2024"
}

variable "app_environment" {
  type        = string
  description = "Application Enviroment"
  default     = "dev"
}

variable "bucket_name" {
  sensitive   = true
  type        = string
  description = "Bucket Name"
}

variable "role_arn" {
  sensitive   = true
  type        = string
  description = "Role ARN"
}

variable "github_repo" {
  sensitive   = true
  type        = string
  description = "Github repository"
}

