resource "azurerm_dns_mx_record" "dns_mx_record" {
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl

  record {
    preference = 10
    exchange   = var.exchange_url
  }
}