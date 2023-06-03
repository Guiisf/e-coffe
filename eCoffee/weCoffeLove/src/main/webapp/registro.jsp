<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="cadastro.css">
<link rel="stylesheet" href="styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,100&display=swap" rel="stylesheet">
</head>
<body>
    <div id="area-cabecalho">
        <%@ include file="header.jsp" %>

    <div id="area-cabecalho">
        <div id="area-logo">
            <img alt="Logo WeLoveCoffee" src="img/logo.png">
        </div>


    </div>
</header>
<main>

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


        <button type="submit">Cadastrar</button
    </form>
</main>
    <footer>
        <p>&copy; 2023 WeLoveCoffee. Todos os direitos reservados.</p>
    </footer>
</body>
</html>
