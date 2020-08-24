data "local_file" "request" {
  filename = "${path.module}/templates/${var.request_template}"
}

data "local_file" "response" {
  filename = "${path.module}/templates/${var.response_template}"
}


resource "aws_appsync_resolver" "default" {
  for_each          = var.enabled == true ? { for r in var.resolver_config : r.id => r } : {}
  type              = each.value.type
  api_id            = var.api_id
  data_source       = each.value.data_source
  field             = each.value.field
  request_template  = data.local_file.request.content
  response_template = data.local_file.response.content


}
