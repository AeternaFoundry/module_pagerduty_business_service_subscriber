resource "pagerduty_business_service_subscriber" "business_service_subscribers" {
  for_each = var.business_service_subscribers

  business_service_id = each.value.business_service_id
  subscriber_id       = each.value.subscriber_id
  subscriber_type     = each.value.subscriber_type
}

