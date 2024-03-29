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
  type = string
}

variable "name_prefix" {
  type = string
}

variable "name_suffix" {
  type = string
}

variable "rule_map" {
  type = list(map(string))
}