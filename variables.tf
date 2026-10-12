variable "business_service_subscribers" {
  description = <<EOT
Map of business_service_subscribers, attributes below
Required:
    - business_service_id
    - subscriber_id
    - subscriber_type
EOT

  type = map(object({
    business_service_id = string
    subscriber_id       = string
    subscriber_type     = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

