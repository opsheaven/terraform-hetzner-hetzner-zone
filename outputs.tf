output "zone" {
  description = "Zone Information"
  value       = hetzner_dns_zone.this
}

output "records" {
  description = "Hetzner Zone Records"
  value = {
    for key, record in var.zone.records : key => hetzner_dns_record.this[key]
  }

}
