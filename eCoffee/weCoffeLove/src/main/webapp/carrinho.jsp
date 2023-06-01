<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<title>Home - WeLoveCoffee</title>
    <link href="styles.css" rel="stylesheet">
    <link href="compras.css" rel="stylesheet">
</head>
<body>
<header>
    <div id="area-cabecalho">
     <%@ include file="header.jsp" %>
        <div id="area-logo">
            <img alt="Logo WeLoveCoffee" src="img/logo.png">
        </div>



<form method="post" action="finalizarCompra.jsp">

                  <label for="nome">Nome:</label>
                  <input type="text" id="nome" name="nome" required>

                  <label for="endereco">Endereço:</label>
                  <input type="text" id="endereco" name="endereco" required>

                  <label for="cep">CEP:</label>
                  <input type="text" id="cep" name="cep" required>

                  <label for="telefone">Telefone:</label>
                  <input type="tel" id="telefone" name="telefone" required>




                  <button type="submit">Finalizar Compra</button>
                </form



<footer>
            <p>&copy; 2023 WeLoveCoffee. Todos os direitos reservados.</p>

        </footer>

    </body>
    </html>

