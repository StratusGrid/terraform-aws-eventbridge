resource "aws_cloudformation_stack" "this" {
  count         = var.enabled ? 1 : 0
  name          = "${var.name_prefix}${var.bus_name}${var.name_suffix}"
  template_body = file("${path.module}/files/eventbridge-bus.yaml")

  parameters = {
    EventBridgeBusName = "${var.name_prefix}${var.bus_name}${var.name_suffix}"
  }

  tags = var.tags
}

resource "aws_cloudformation_stack" "rule" {
  count         = length(var.rule_map)
  name          = "${var.name_prefix}${var.bus_name}-rule-${count.index}${var.name_suffix}"
  template_body = file("${path.module}/files/eventbridge-rule.yaml")

  parameters = {

    EventsRuleName          = var.rule_map[count.index]["name"]
    EventsBusName           = "${var.name_prefix}${var.bus_name}${var.name_suffix}"
    EventsRulePattern       = var.rule_map[count.index]["pattern"]
    EventsRuleTargetArn     = var.rule_map[count.index]["targetArn"]
    EventsRuleTargetId      = var.rule_map[count.index]["targetId"]
    EventsRuleTargetRoleArn = var.rule_map[count.index]["RoleArn"]
  }

  tags = var.tags
}
