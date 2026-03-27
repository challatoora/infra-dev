module "component" {
    for_each = var.components
    source = "git::https://github.com/challatoora/terraform-component.git?ref=main"
    rule_priority = each.value.rule_priority
}