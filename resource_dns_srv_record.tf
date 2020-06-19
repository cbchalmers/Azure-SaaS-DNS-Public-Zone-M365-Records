resource "azurerm_dns_srv_record" "dns_srv_record_1" {
  name                = "_sip._tls"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl

  record {
    priority = 100
    weight   = 1
    port     = 443
    target   = "sipdir.online.lync.com."
  }
}

resource "azurerm_dns_srv_record" "dns_srv_record_2" {
  name                = "_sipfederationtls._tcp"
  zone_name           = azurerm_dns_zone.dns_zone.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = var.default_ttl

  record {
    priority = 100
    weight   = 1
    port     = 5061
    target   = "sipfed.online.lync.com."
  }
}