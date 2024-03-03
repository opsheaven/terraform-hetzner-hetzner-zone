# terraform-hetzner-zone
OpsHeaven's Terraform module to manage Hetzner DNS Zones.

## Examples

* Complete Example:https://github.com/opsheaven/terraform-hetzner-zone/tree/main/examples/complete
* OpsHeaven Configuration: https://github.com/opsheaven/provisioner/tree/main/hetzner/zone

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.7 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hetzner"></a> [hetzner](#provider\_hetzner) | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_zone"></a> [zone](#input\_zone) | Hetzner Zone Configuration | <pre>object({<br>    name = string<br>    ttl  = optional(number, 3600)<br>    records = optional(map(object({<br>      name        = string<br>      description = optional(string, "")<br>      type        = string<br>      ttl         = optional(number, 0)<br>      value       = string<br>    })), {})<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_records"></a> [records](#output\_records) | Hetzner Zone Records |
| <a name="output_zone"></a> [zone](#output\_zone) | Zone Information |
<!-- END_TF_DOCS -->
