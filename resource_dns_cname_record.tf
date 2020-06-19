resource "azurerm_dns_cname_record" "dns_cname_record_1" {
  name                = "autodiscover"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl
  record              = "autodiscover.outlook.com."
}

resource "azurerm_dns_cname_record" "dns_cname_record_2" {
  name                = "enterpriseenrollment"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl
  record              = "enterpriseenrollment.manage.microsoft.com."
}

resource "azurerm_dns_cname_record" "dns_cname_record_3" {
  name                = "enterpriseregistration"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl
  record              = "enterpriseregistration.windows.net."
}

resource "azurerm_dns_cname_record" "dns_cname_record_4" {
  name                = "lyncdiscover"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl
  record              = "webdir.online.lync.com."
}

resource "azurerm_dns_cname_record" "dns_cname_record_5" {
  name                = "sip"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl
  record              = "sipdir.online.lync.com."
}