## Containers

Na pasta de containers é possivel alterar parametros no Dockerfile ou nos arquivos de configuração utilizados pela solução afim de incluir mais metricas a serem enviadas para o elasticsearch.

[application-example](application-example)
 * Aplicação com um loop gerando uma saída de log que será enviado ao elasticsearch
 
[elk-containers](elk-containers)
 * Contem as definições dos containers de Filebeats (responsavel pela coleta e envio para o Logstash) e de Logstash, responsável pelo parse e envio para o Elasticsearch.
 
[webserver-helloworld](webserver-helloworld)
 * Um site top pra demonstrar toda minha habilidate com html :sweat_smile:
 
 ![collofrull-site](../assets/images/collorfullsite.png)
 
## Build

Para buildar um container, basta executar o domando:

````bash
docker build -t <insiraumatag> <pathproDockerfile>
````

Para executar um container, basta executar o comando:

````bash
docker run -itd <container-image>:<suatag>
````
