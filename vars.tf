variable "resource_location" {
  type    = string
  default = "UK South"
}

variable "resource_prefix" {
  type    = string
  default = "CC-D-UKS"
}

variable "default_ttl" {
  type    = string
  default = "3600"
}

variable "domain_name" {
  type    = string
  default = "your-domain.com"
}

variable "exchange_url" {
  type    = string
  default = "yourdomain-com.mail.protection.outlook.com."
}