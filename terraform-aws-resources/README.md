## Terraform Modules

Aqui, os modulos estao definidos por tipo de recurso. Para mais informacoes, consultar o readme de cada modulo.
   * [aws_autoscaling-group](terraform-aws-asg)
   * [aws_elasticsearh](terraform-aws-elasticsearch)

### Requisitos:

Credenciais aws, elas podem ser passadas ao terraform de diversas formas, a mais simples é definir o default profile no arquivo $home/.aws/credentials como o exemplo abaixo:

com o [aws cli](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2.html) instalado, execute:

````bash
aws configure
````
Apos configurado, o arquivo de credentials tera os valores de access_key e secret_key preenchidos, como o exemplo abaixo:

````bash
[default]
aws_access_key_id = <aws_access_key_id>
aws_secret_access_key = <aws_secret_access_key>
region = <regiao>
output = json
````

Terraform 12 instalado, para consultar como instalar o binário, consulte a [documentacao](https://learn.hashicorp.com/tutorials/terraform/install-cli).

````bash
terraform version

Terraform v0.12.29
````
