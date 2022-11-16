output "bus_arn" {
  description = "EventBridge bus ARN"
  value       = join("", aws_cloudformation_stack.this[*].outputs.EventBridgeBusArn)
}

output "bus_name" {
  description = "EventBridge bus name"
  value       = join("", aws_cloudformation_stack.this[*].outputs.EventBridgeBusName)
}

output "rule_arn" {
  description = "EventBridge rule ARN"
  value       = join(",", aws_cloudformation_stack.rule[*].outputs.EventRuleArn)
}