output "ssoadmin_instance_access_control_attributes_id" {
  description = "Map of id values across all ssoadmin_instance_access_control_attributes, keyed the same as var.ssoadmin_instance_access_control_attributes"
  value       = { for k, v in aws_ssoadmin_instance_access_control_attributes.ssoadmin_instance_access_control_attributes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssoadmin_instance_access_control_attributes_attribute" {
  description = "Map of attribute values across all ssoadmin_instance_access_control_attributes, keyed the same as var.ssoadmin_instance_access_control_attributes"
  value       = { for k, v in aws_ssoadmin_instance_access_control_attributes.ssoadmin_instance_access_control_attributes : k => v.attribute if v.attribute != null && length(v.attribute) > 0 }
}
output "ssoadmin_instance_access_control_attributes_instance_arn" {
  description = "Map of instance_arn values across all ssoadmin_instance_access_control_attributes, keyed the same as var.ssoadmin_instance_access_control_attributes"
  value       = { for k, v in aws_ssoadmin_instance_access_control_attributes.ssoadmin_instance_access_control_attributes : k => v.instance_arn if v.instance_arn != null && length(v.instance_arn) > 0 }
}
output "ssoadmin_instance_access_control_attributes_region" {
  description = "Map of region values across all ssoadmin_instance_access_control_attributes, keyed the same as var.ssoadmin_instance_access_control_attributes"
  value       = { for k, v in aws_ssoadmin_instance_access_control_attributes.ssoadmin_instance_access_control_attributes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssoadmin_instance_access_control_attributes_status" {
  description = "Map of status values across all ssoadmin_instance_access_control_attributes, keyed the same as var.ssoadmin_instance_access_control_attributes"
  value       = { for k, v in aws_ssoadmin_instance_access_control_attributes.ssoadmin_instance_access_control_attributes : k => v.status if v.status != null && length(v.status) > 0 }
}
output "ssoadmin_instance_access_control_attributes_status_reason" {
  description = "Map of status_reason values across all ssoadmin_instance_access_control_attributes, keyed the same as var.ssoadmin_instance_access_control_attributes"
  value       = { for k, v in aws_ssoadmin_instance_access_control_attributes.ssoadmin_instance_access_control_attributes : k => v.status_reason if v.status_reason != null && length(v.status_reason) > 0 }
}

