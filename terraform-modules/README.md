## Terraform Modules

* Aqui, os modulos estao definidos por tipo de recurso. Para mais informacoes, consultar o readme de cada modulo.
    * [aws_autoscaling-group](terraform-aws-asg)
    * [aws_elasticsearh](terraform-aws-elasticsearch)





### Rodar dentro da Instancia.

````bash
sudo /usr/share/filebeat/bin/filebeat -e -c /etc/filebeat/filebeat.yml
sudo /opt/logstash-7.1.1/bin/logstash -f /opt/logstash-7.1.1/config/test.conf
````