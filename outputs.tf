output "zone" {
  description = "Zone Information"
  value       = hetzner_zone.this
}

output "records" {
  description = "Hetzner Zone Records"
  value       = data.hetzner_zone_records.this.records
}
