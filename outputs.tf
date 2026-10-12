output "business_service_subscribers_id" {
  description = "Map of id values across all business_service_subscribers, keyed the same as var.business_service_subscribers except keys with no id are omitted"
  value       = { for k, v in pagerduty_business_service_subscriber.business_service_subscribers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "business_service_subscribers_business_service_id" {
  description = "Map of business_service_id values across all business_service_subscribers, keyed the same as var.business_service_subscribers except keys with no business_service_id are omitted"
  value       = { for k, v in pagerduty_business_service_subscriber.business_service_subscribers : k => v.business_service_id if v.business_service_id != null && length(v.business_service_id) > 0 }
}
output "business_service_subscribers_subscriber_id" {
  description = "Map of subscriber_id values across all business_service_subscribers, keyed the same as var.business_service_subscribers except keys with no subscriber_id are omitted"
  value       = { for k, v in pagerduty_business_service_subscriber.business_service_subscribers : k => v.subscriber_id if v.subscriber_id != null && length(v.subscriber_id) > 0 }
}
output "business_service_subscribers_subscriber_type" {
  description = "Map of subscriber_type values across all business_service_subscribers, keyed the same as var.business_service_subscribers except keys with no subscriber_type are omitted"
  value       = { for k, v in pagerduty_business_service_subscriber.business_service_subscribers : k => v.subscriber_type if v.subscriber_type != null && length(v.subscriber_type) > 0 }
}

