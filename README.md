# Funcionalidades a serem implementadas no Projeto Integrador III

## Tecnologias utilizadas

- Java
- H2 DataBase
- HTML/CSS/JavaScript (ou algum framework de front-end)

## Definição de requisitos
Com base no tema de sistema para cafeteria, os requisitos para a aplicação são:
- Cadastro de clientes
- Vendas realizadas pelos clientes

## Criação do banco de dados
Com base nos requisitos definidos, o modelo do banco de dados para a aplicação será composto pelas seguintes tabelas:
- Tabela "clientes" (id, nome, email, telefone, cpf)


## Desenvolvimento da aplicação
As funcionalidades a serem implementadas são:
- Implementar os CRUDs (Create, Read, Update, Delete) para os clientes


## Desenvolvimento do front-end
A interface do usuário (UI) será desenvolvida utilizando HTML/CSS/JavaScript ou algum framework de front-end, como React Native. Algumas sugestões de páginas para a aplicação são:
- Página inicial com informações sobre a cafeteria e opções de navegação
- Página de produtos
- Página de quem somos

## Protótipo das telas
![Protótipo das telas](https://github.com/Guiisf/e-coffe/blob/main/images/Captura%20de%20tela%20de%202023-03-08%2022-28-36.png)
![Protótipo das telas](https://github.com/Guiisf/e-coffe/blob/main/images/Slide1.jpg)
![Protótipo das telas](https://github.com/Guiisf/e-coffe/blob/main/images/Tela%20login.png)
![Protótipo das telas](https://github.com/Guiisf/e-coffe/blob/main/images/Tela%20login.png)
![Protótipo das telas](https://github.com/Guiisf/e-coffe/blob/main/images/quemsomos_finalizada.jpeg)
![Protótipo das telas](https://github.com/Guiisf/e-coffe/blob/Carlos/Tela%20de%20Cadastro.PNG)

## Como efetuar o teste
### Criando tabela
Primeiro, crie a tabela no H2 através do link: [http://localhost:8080/weCoffeLove/console](http://localhost:8080/weCoffeLove/console).

- Login: "sa"
- Senha: "sa"

Após o login, crie a tabela utilizando a seguinte query:

CREATE TABLE USUARIOS (
id INT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
sobrenome VARCHAR(50) NOT NULL,
cpf CHAR(11) NOT NULL,
data_nascimento DATE NOT NULL,
email VARCHAR(100) NOT NULL,
senha VARCHAR(20) NOT NULL,
PRIMARY KEY (id)
);


### Executando o projeto
Após a criação da tabela, execute o comando `tomcat7:run` na aba do Maven no IntelliJ.
Clique no link [http://localhost:8080/weCoffeLove](http://localhost:8080/weCoffeLove) que aparecerá no console.
Preencha os campos da tela e clique no botão "Cadastrar". O cadastro será enviado ao banco e em seguida todos os registros do banco serão exibidos.
