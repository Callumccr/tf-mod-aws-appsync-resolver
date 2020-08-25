## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 >= 2.7.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| api\_id | (Required) - The API ID for the GraphQL API. | `string` | n/a | yes |
| availability\_zones | (Required) - The AWS avaialbility zones (e.g. ap-southeast-2a/b/c). Autoloaded from region.tfvars. | `list(string)` | n/a | yes |
| pipeline\_resolver\_config | (Optional) - A list of maps that contain configuration for appsync pipeline resolvers to iteration over | <code><pre>list(object({<br>    kind              = string<br>    type              = string<br>    field             = string<br>    pipeline_config   = map(list(string))<br>    request_template  = string<br>    response_template = string<br>  }))<br></pre></code> | n/a | yes |
| resolver\_config | (Optional) - A list of maps that contain configuration for appsync resolvers to iteration over | <code><pre>list(object({<br>    id                = string<br>    type              = string<br>    field             = string<br>    data_source       = string<br>    request_template  = string<br>    response_template = string<br>  }))<br></pre></code> | n/a | yes |
| template\_dir | (Required) - The full directory path of the appsync templates | `string` | n/a | yes |
| attributes | (Optional) - Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| aws\_account\_id | The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars | `string` | `""` | no |
| aws\_assume\_role\_arn | (Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars. | `string` | `""` | no |
| aws\_assume\_role\_external\_id | (Optional) - The external ID to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_assume\_role\_session\_name | (Optional) - The session name to use when making the AssumeRole call. | `string` | `""` | no |
| aws\_region | The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars. | `string` | `""` | no |
| delimiter | (Optional) - Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| enabled | (Optional) - A Switch that decides whether to create a terraform resource or run a provisioner. Default is true | `bool` | `true` | no |
| environment | (Optional) - Environment, e.g. 'dev', 'qa', 'staging', 'prod' | `string` | `""` | no |
| name | (Optional) - Solution name, e.g. 'vault', 'consul', 'keycloak', 'k8s', or 'baseline' | `string` | `""` | no |
| namespace | (Optional) - Namespace, which could be your abbreviated product team, e.g. 'rci', 'mi', 'hp', or 'core' | `string` | `""` | no |
| tags | (Optional) - Additional tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| pipeline\_resolver\_arn | A list of pipeline resolver ARNs |
| resolver\_arn | A list of pipeline resolver ARNs |
| resolver\_config | A list of resolver ARNs |

