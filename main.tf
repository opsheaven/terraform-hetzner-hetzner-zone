
resource "hetzner_zone" "this" {
  name = var.zone.name
  ttl  = var.zone.ttl
}

resource "hetzner_record" "this" {
  for_each = var.records
  name     = each.value.name
  type     = each.value.type
  ttl      = each.value.ttl > 0 ? each.value.ttl : hetzner_zone.this.ttl
  value    = each.value.value
  zone_id  = hetzner_dns_zone.this.id
}
