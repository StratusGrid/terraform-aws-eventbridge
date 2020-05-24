resource "aws_cloudformation_stack" "this" {
  count         = var.enabled ? 1 : 0
  name          = var.bus_name
  template_body = file("${path.module}/files/eventbridge-bus.yaml")

  parameters = {
    EventBridgeBusName = var.bus_name
  }

  tags = var.tags
}
