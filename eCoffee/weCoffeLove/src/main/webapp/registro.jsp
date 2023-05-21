<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tela de Login</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div id="area-cabecalho">
<%@ include file="header.jsp" %>

    <div id="area-logo">

        <img width="250px" src="img/logo.png">

    </div>

    <div id="area-menu">
            <a href="index.jsp">Home</a>
            <a href="produtos.html">Produtos</a>
            <a href="quemSomos.html">Quem Somos</a>
            <a href="registro.html">Registrar</a>
        </div>


    <h1>Registro de Usuario</h1>

    <form action="create-weCoffee" method="post">


         <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome" value="${param.name}"><br><br>
               <input type="hidden" id="id" name="id" value="${param.id} ">


        <label for="sobrenome">Sobrenome:</label>
        <input type="text" id="sobrenome" name="sobrenome" value="${param.sobrenome}"><br><br>


        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email" value="${param.email}"><br><br>


        <label for="cpf">CPF:</label>
        <input type="text" id="cpf" name="cpf" value="${param.cpf}"><br><br>

        <label for="data_nascimento">Data de Nascimento:</label>
        <input type="date" id="data_nascimento" name="data_nascimento" value="${param.data_nascimento}"><br><br>

        <label for="senha">Senha:</label>
        <input type="password" id="senha" name="senha" value="${param.senha}"><br><br>

        <label for="confirma_senha">Confirme sua senha:</label>
        <input type="password" id="confirma_senha" name="confirma_senha" value="${param.confirma_senha}"><br><br>


        <button type="submit">Cadastrar</button>

    </form>

    <footer>
        <p>&copy; 2023 WeLoveCoffee. Todos os direitos reservados.</p>
    </footer>
</body>
</html>
