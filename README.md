# <h1 align="center"> funcionalidades que será implementada no PI lll</h1>

[PROJETO INTEGRADOR III - Turma B]


<p>Spring</p>
<p>MySQL</p>
<p>HTML/CSS/JavaScript (ou algum framework de front-end)</p>

<h2>Definição de requisitos:</h2>
Com base no tema de sistema para cafeteria,  
<p>requisitos para a aplicação:</p>

<li>Cadastro de clientes</li>
<li>Cadastro de fornecedores</li>
<li>Cadastro de produtos (bebidas, alimentos, etc.)</li>
<li>Controle de estoque</li>
<li>Controle de vendas (realizadas pelos clientes)</li>

<h2>Criação do banco de dados:</h2>

Com base nos requisitos definidos, modelo de banco de dados para a aplicação:

<li>Tabela "clientes" (id, nome, email, telefone, endereço)</li>
<li>Tabela "fornecedores" (id, nome, email, telefone, endereço)</li>
<li>Tabela "produtos" (id, nome, descrição, preço, quantidade em estoque)</li>
<li>Tabela "vendas" (id, cliente_id, data, valor_total)</li>
<li>Tabela "itens_venda" (id, venda_id, produto_id, quantidade, valor_unitário)</li>
<li>Desenvolvimento da aplicação:</li>


<img src="https://github.com/Guiisf/e-coffe/blob/guilherme/docs/DER.jpg" width="500" height="500">


<h2>funcionalidades:</h2>

<li>Implementar os CRUDs (Create, Read, Update, Delete) para os clientes, fornecedores e produtos</li>
<li>Implementar o controle de estoque, com validação de estoque mínimo e máximo para cada produto</li>
<li>Implementar o registro de vendas, atualizando o estoque dos produtos vendidos e calculando o valor total da venda</li>
<li>Desenvolvimento do front-end:</li>

<h3>Por fim,  a interface do usuário (UI) utilizaremos HTML/CSS/JavaScript ou algum framework de front-end, como React Native. Algumas sugestões de páginas para a aplicação são:</h3>

<li>Página inicial com informações sobre a cafeteria e opções de navegação</li>
<li>Página de cadastro/edição de clientes, fornecedores e produtos</li>
<li>Página de listagem de clientes, fornecedores e produtos</li>
<li>Página de controle de estoque, com opção de adicionar/retirar produtos do estoque</li>
<li>Página de registro de vendas, com opção de adicionar/remover produtos da venda e cálculo do valor total</li>

<h2>O prototipo das telas</h2>
<img src="https://github.com/Guiisf/e-coffe/blob/main/images/Captura%20de%20tela%20de%202023-03-08%2022-28-36.png" width="400" height="400">
<img src="https://github.com/Guiisf/e-coffe/blob/main/images/Slide1.jpg" width="400" height="400">
<img src="https://github.com/Guiisf/e-coffe/blob/main/images/Tela%20login.png" width="400" height="400">
<img src="https://github.com/Guiisf/e-coffe/blob/main/images/Tela%20login.png" width="400" height="400">
<img src="https://github.com/Guiisf/e-coffe/blob/main/images/quemsomos_finalizada.jpeg" width="400" height="400">
<img src="https://github.com/Guiisf/e-coffe/blob/Carlos/Tela%20de%20Cadastro.PNG" width="400" height="400">


<h2>Como efetuar o teste:</h2>
<h3>Criando tabela: </h3>
Primeiro, criar a tabela no h2 através do link: http://localhost:8080/weCoffeLove/console.

Login: "sa"
senha: "sa"

Após o login, criar a tabela através da query abaixo:

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

<h3>Executando o projeto: </h3>
Após a criação da tabela, executar o tomcat7:run na aba do maven, no intellij.

Clicar no link http://localhost:8080 que vai aparecer no console.

Preencher os campos da tela.

Após os campos preenchidos, clicar no botão "Cadastrar", nesta hora o cadastro será enviado ao banco e logo em seguida, todos os registros do banco vão aparecer.sws
