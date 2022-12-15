
# Projeto Padwan

![PROJETO PADAWAN](https://user-images.githubusercontent.com/117527706/206322674-32e49785-1b78-4584-a581-d59a98f4706f.jpeg)

Resumo do projeto:

Projeto de Infraestrutura como código com docker, utilizando Terraform para provisionamento e AWS como provedor da infraestrutura.

🔨 Funcionalidades do projeto

A partir desse projeto você pode:

Criar ambientes para aplicações Docker
Configurar maquinas para executar um container com uma API automaticamente.
Preparar uma infraestrutura elastica.

✔️ Técnicas e tecnologias utilizadas

Neste App são exploradas as seguintes técnicas e tecnologias:

Criação de maquinas virtuais para executar containers Docker: criação de maquinas virtuias no ambiente EC2 (Elastic Compute Cloud) da AWS feito de forma automatica pelo ECS(Amazon Elastic Conteiner Service).

Criação de imagens Docker: criação das imagens a serem utilizadas pelo Docker.

Construção do ambiente de forma automatica utilizando a ferramenta de Iac Terraform.

Elastic Container Service(ecs)
O Amazon Elastic Container Service (Amazon ECS) é um serviço de gerenciamento de contêineres altamente rápido e escalável. Você pode usá-lo para executar, interromper e gerenciar contêineres em um cluster. No Amazon ECS, seus contêineres são definidos em uma definição de tarefa que você usa para executar uma tarefa individual ou tarefa em um serviço.As tarefas e serviços são executados na infraestrutura que é registrada em um cluster.
Componentes do funcionamento do ECS:

Task — é o runtime de instancia;

Task definition — São modelos, templates para as tasks. Aqui é onde se define qual imagem docker usar, memória/cpu, rede, etc.;


Container (apenas EC2) — É a instância onde as tasks rodam;


Cluster:


EC2 — Um grupo de Containers que rodam as Tasks;

Fargate — Um grupo de Tasks. Só preciso me preocupar com o nr de Tasks;

Service — Gerencia as tasks e garante a quantidade delas que estão online e rodando.

O Amazon Elastic Compute Cloud (EC2) é uma solução que facilita a obtenção de servidores virtuais, também conhecidos como instâncias de computadores na nuvem. 

Docker:

Docker é uma forma de virtualizar aplicações no conceito de “containers”, trazendo da web ou de seu repositório interno uma imagem completa, incluindo todas as dependências necessárias para executar sua aplicação.
Qual a vantagem de usar o Docker?

O Docker permite que os aplicativos sejam separados da infraestrutura para que possam entregar o software rapidamente. Com o Docker, você pode gerenciar sua infraestrutura da mesma forma que gerencia seus aplicativos e com isso reduzir significativamente o atraso entre escrever o código e executá-lo na produção.

📁 Acesso ao projeto
Você pode baixar o zip ou acessar o código fonte do projeto final.
