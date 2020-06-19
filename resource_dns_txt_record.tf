resource "azurerm_dns_txt_record" "dns_txt_record_1" {
  name                = "@"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl

  record {
    value = "v=spf1 include:spf.protection.outlook.com -all"
  }
}

resource "azurerm_dns_txt_record" "dns_txt_record_2" {
  name                = "_dmarc.${var.domain_name}"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl

  record {
    value = "v=DMARC1; p=reject"
  }
}