output "bus_arn" {
  value = join("", aws_cloudformation_stack.this.*.outputs.EventBridgeBusArn)
}

output "bus_name" {
  value = join("", aws_cloudformation_stack.this.*.outputs.EventBridgeBusName)
}
