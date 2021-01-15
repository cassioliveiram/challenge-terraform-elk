## Packer aws image


#### Packer

O packer, é uma ferramenta para criar imagens de máquina idênticas para várias plataformas a partir de uma única configuração de código-fonte.
Para este desafio, estamos criando uma amazon_ami baseada no Ubuntu Server 16 e instalando algumas dependencias utilizando o Ansible para provisionar estas dependencias.

Para iniciar o build da imagem, execute o seguinte comando: 

````bash
packer build aws-image.json
````

Caso precise realizar alguma alteracao no arquivo, para validar a sintaxe do mesmo voce pode rodar o seguinte comando:

````bash
packer validate aws-image.json
````

#### Ansible

O Ansible é uma ferramenta para automação utilizada para configurar servidores, instalar software e executar uma grande variedade de tarefas a partir de uma localização central, sem que necessite de um Agente instalado na maquina de destino.

No cenário atual, estamos utilizando o ansible para realizar as seguintes atividades: 

* Instalacao:
    * Update
    * Python
    * Docker
* Gerenciamento
    * Iniciar e manter em status de running os containers de logstash, filebeat e application example (responsavel por gerar saidas a serem enviadas para o elasticsearch).