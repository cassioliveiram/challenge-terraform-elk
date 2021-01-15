## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | ~> 3.23.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.23.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| automated\_snapshot\_start\_hour | Hour during which the service takes an automated daily snapshot of the indices in the domain. | `string` | `"23"` | no |
| aws\_region | AWS Region to create resources | `string` | `"us-west-2"` | no |
| dedicated\_master\_enabled | Indicates whether dedicated master nodes are enabled for the cluster. | `bool` | `false` | no |
| dedicated\_master\_type | Instance type of the dedicated master nodes in the cluster. | `string` | `null` | no |
| domain\_name | Name of the domain. | `string` | `"moreirac-learn"` | no |
| ebs\_enabled | Whether EBS volumes are attached to data nodes in the domain. | `bool` | `true` | no |
| elasticsearch\_version | The version of Elasticsearch to deploy. Defaults to 7.9 | `string` | `"7.9"` | no |
| instance\_count | Number of instances in the cluster. | `string` | `"2"` | no |
| instance\_type | Instance type of data nodes in the cluster. | `string` | `"t3.medium.elasticsearch"` | no |
| log\_publishing\_options\_cw\_log\_group\_arn | ARN of the Cloudwatch log group to which log needs to be published. | `string` | `""` | no |
| log\_publishing\_options\_enabled | Specifies whether given log publishing option is enabled or not. | `bool` | `false` | no |
| log\_publishing\_options\_log\_type | A type of Elasticsearch log. Valid values: INDEX\_SLOW\_LOGS, SEARCH\_SLOW\_LOGS, ES\_APPLICATION\_LOGS | `string` | `"ES_APPLICATION_LOGS"` | no |
| volume\_size | The size of EBS volumes attached to data nodes (in GiB) | `string` | `"50"` | no |
| volume\_type | The type of EBS volumes attached to data nodes. | `string` | `"gp2"` | no |
| zone\_awareness\_enabled | Indicates whether zone awareness is enabled, set to true for multi-az deployment. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | Elasticsearch ARN |
| kibana\_url | Kibana URL endpoint |
| url | Elasticsearch URL endpoint |