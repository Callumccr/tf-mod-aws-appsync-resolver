resource "aws_appsync_resolver" "default" {
  for_each          = var.enabled == true ? { for r in var.resolver_config : r.id => r } : {}
  type              = each.value.type
  api_id            = var.api_id
  data_source       = each.value.data_source
  field             = each.value.field
  request_template  = jsonencode(each.value.request_template)
  response_template = jsonencode(each.value.response_template)
}
