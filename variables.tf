variable "zone" {
  description = "Hetzner Zone Configuration"
  type = object({
    name = string
    ttl  = optional(number, 3600)
    records = optional(map(object({
      name        = string
      description = optional(string, "")
      type        = string
      ttl         = optional(number, 0)
      value       = string
    })), {})
  })

  validation {
    condition     = length(var.zone.name) > 3 && regex("((?!-)[A-Za-z0–9-]{1,63}(?<!-)\\.[A-Za-z]{2,6})$", var.zone.name)
    error_message = "Invalis zone name!"
  }

  validation {
    condition     = contains([60, 300, 600, 1800, 3600, 86400], var.zone.ttl)
    error_message = "Invalid value for the zone ttl! Supported values for the TTL is 60,300,600,1800,3600,86400"
  }

  validation {
    condition = alltrue([
      for key, record in var.zone.records : contains(["A", "AAAA", "NS", "MX", "CNAME", "RP", "TXT", "SOA", "HINFO", "SRV", "DANE", "TLSA", "DS", "CAA"])
      ]
    )
    error_message = "Invalid value for the record type! Supported values for the record type is A,AAAA,NS,MX,CNAME,RP,TXT,SOA,HINFO,SRV,DANE,TLSA,DS,CAA"
  }

  validation {
    condition = alltrue([
      for key, record in var.zone.records : contains([0, 60, 300, 600, 1800, 3600, 86400], record.ttl)
      ]
    )
    error_message = "Invalid value for the record ttl! Supported values for the record type is 0, 60,300,600,1800,3600,86400"
  }
}
