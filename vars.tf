variable "resource_location" {
  description = "Desired location to provision the resources. Eg UK South"
  type        = string
#  default = "UK South"
}

variable "resource_prefix" {
  description = "Desired prefix for the provisioned resources. Eg CC-D-UKS"
  type        = string
#  default = "CC-D-UKS"
}

variable "default_ttl" {
  description = "Time to Live value"
  type    = string
  default = "3600"
}

variable "domain_name" {
  description = "Your public Domain name. Eg contoso.com"
  type    = string
#  default = "your-domain.com"
}

variable "exchange_url" {
  description = "Your unique MX record. You can find this on [Microsoft 365 Admin Center > Domains](https://admin.microsoft.com/Adminportal/Home?source=applauncher#/Domains)"
  type        = string
#  default = "yourdomain-com.mail.protection.outlook.com."
}