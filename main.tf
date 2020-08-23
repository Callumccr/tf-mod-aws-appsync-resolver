resource "aws_appsync_resolver" "default" {
  for_each          = var.enabled == true && length(var.resolver_config) > 0 ? { for r in var.resolver_config : r.field => r } : {}
  type              = each.value.type
  api_id            = var.api_id
  data_source       = each.value.data_source
  field             = each.key
  request_template  = each.value.request_template
  response_template = each.value.response_template
}
