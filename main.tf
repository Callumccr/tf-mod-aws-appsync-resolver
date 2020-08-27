resource "aws_appsync_resolver" "default" {
  for_each          = var.enabled == true ? { for r in var.resolver_config : r.id => r } : {}
  type              = each.value.type
  api_id            = var.api_id
  data_source       = each.value.data_source
  field             = each.value.field
  request_template  = file("${var.template_dir}/${each.value.request_template}")
  response_template = file("${var.template_dir}/${each.value.response_template}")
}

resource "aws_appsync_resolver" "pipeline" {
  for_each          = var.enabled == true ? { for r in var.pipeline_resolver_config : r.field => r } : {}
  type              = each.value.type
  api_id            = var.api_id
  field             = each.key
  request_template  = file("${var.template_dir}/${each.value.request_template}")
  response_template = file("${var.template_dir}/${each.value.response_template}")
  kind              = each.value.kind
  pipeline_config {
    functions = each.value.pipeline_config.functions
  }
}
