## Terraform aws asg
Este codigo terraform, cria um autoscaling group com uma instancia ec2, voce pode consultar as variaveis disponiveis para serem utilizadas/atualizadas nas tabelas abaixo. 

### Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | ~> 3.23.0 |

### Providers

| Name | Version |
|------|---------|
| aws | ~> 3.23.0 |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_region | AWS Region to create resources | `string` | `"us-west-2"` | no |
| ebs\_block\_device | Additional EBS block devices to attach to the instance. | <pre>list(<br>  object(<br>  {<br>    volume_type           = string,<br>    volume_size           = number,<br>    encrypted             = bool,<br>    iops                  = number,<br>    delete_on_termination = bool,<br>    device_name           = string<br>  }<br>  )<br>  )</pre> | `[]` | no |
| ebs\_optimized | Definition if ebs volume is true or false | `bool` | `true` | no |
| enable\_monitoring | This value enables a lot of monitoring on aws side, you can see this values in cloudwatch | `bool` | `true` | no |
| iam\_instance\_profile | The iam role for instance | `string` | `null` | no |
| image\_id | The image of your instance | `string` | `""` | no |
| instance\_type | Define instance type | `string` | `"t3.micro"` | no |
| key\_name | The key used to access the instance using ssh | `string` | `"moreira-lab"` | no |
| name | The name of resource | `string` | `"moreira-lab"` | no |
| root\_block\_device | Customize details about the root block device of the instance. | <pre>list(<br>  object(<br>  {<br>    volume_type           = string,<br>    volume_size           = number,<br>    encrypted             = bool,<br>    iops                  = number,<br>    delete_on_termination = bool<br>  }<br>  )<br>  )</pre> | <pre>[<br>  {<br>    "delete_on_termination": true,<br>    "encrypted": true,<br>    "iops": 0,<br>    "volume_size": 8,<br>    "volume_type": "gp2"<br>  }<br>]</pre> | no |
| security\_groups | A list of associated security group IDS | `list(string)` | `[]` | no |
| tags | Map containing tags to associate to AWS resources. | `map(string)` | `{}` | no |
| user\_data | An script to run at boot of instance. You can customize values and set default things you want run at launch of instance | `string` | `null` | no |

### Outputs

| Name | Description |
|------|-------------|
| asg-name | n/a |
| launch-configuration-name | n/a |