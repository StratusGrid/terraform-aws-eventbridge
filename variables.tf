variable "enabled" {
  type        = bool
  description = "Whether to create the resources. Set to `false` to prevent the module from creating any resources"
  default     = true
}

variable "tags" {
  description = "A map of tags (key-value pairs) passed to resources."
  type        = map(string)
  default     = {}
}

variable "bus_name" {
  description = "EventBridge bus name"
  type        = string
}

variable "name_prefix" {
  description = "String to prefix on object names"
  type        = string
}

variable "name_suffix" {
  description = "String to append to the name_suffix used on object names. This is optional, so start with dash if using like so: -mysuffix. This will result in prefix-objectname-env-mysuffix"
  type        = string
}

variable "rule_map" {
  description = "EventBridge rule map"
  type        = list(map(string))
}