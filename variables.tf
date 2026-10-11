variable "ssoadmin_instance_access_control_attributes" {
  description = <<EOT
Map of ssoadmin_instance_access_control_attributes, attributes below
Required:
    - instance_arn
    - attribute (block):
        - key (required)
        - value (required, block):
            - source (required)
Optional:
    - region
EOT

  type = map(object({
    instance_arn = string
    region       = optional(string)
    attribute = list(object({
      key = string
      value = list(object({
        source = set(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssoadmin_instance_access_control_attributes : (
        length(v.attribute) >= 1
      )
    ])
    error_message = "Each attribute list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ssoadmin_instance_access_control_attributes : (
        alltrue([for item in v.attribute : (length(item.value) >= 1)])
      )
    ])
    error_message = "Each value list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

