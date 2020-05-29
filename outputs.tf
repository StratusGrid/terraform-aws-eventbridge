output "bus_arn" {
  value = join("", aws_cloudformation_stack.this.*.outputs.EventBridgeBusArn)
}

output "bus_name" {
  value = join("", aws_cloudformation_stack.this.*.outputs.EventBridgeBusName)
}

output "rule_arn" {
  value = join(",", aws_cloudformation_stack.rule.*.outputs.EventRuleArn)
}