<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Finalizar Compra - WeLoveCoffee</title>
    <link href="styles.css" rel="stylesheet">
    <link href="compras.css" rel="stylesheet">
    <style>
        h1 {
            text-align: center;
            font-size: 48px;
            margin-top: 50px;
            opacity: 0;
            transform: translateY(-20px);
            transition: opacity 1s ease, transform 1s ease;
        }

        #parabens {
            text-align: center;
            font-size: 36px;
            margin-top: 30px;
            opacity: 0;
            transform: translateY(-20px);
            transition: opacity 1s ease, transform 1s ease;
        }

        .fade-in {
            opacity: 1 !important;
            transform: translateY(0) !important;
        }
    </style>
    <script>
        window.addEventListener('DOMContentLoaded', function() {
            var h1Element = document.querySelector('h1');
            var parabensElement = document.querySelector('#parabens');

            setTimeout(function() {
                h1Element.classList.add('fade-in');
            }, 500);

            setTimeout(function() {
                parabensElement.classList.add('fade-in');
            }, 1500);
        });
    </script>
</head>
<body>
    <header>
        <div id="area-cabecalho">
            <%@ include file="header.jsp" %>
            <div id="area-logo">
                <img alt="Logo WeLoveCoffee" src="img/logo.png">
            </div>
        </div>
    </header>

    <h1>Finalizar Compra</h1>

    <% String nome = request.getParameter("nome"); %>
    <% String endereco = request.getParameter("endereco"); %>
    <% String cep = request.getParameter("cep"); %>
    <% String telefoneStr = request.getParameter("telefone");
       double telefone = Double.parseDouble(telefoneStr); %>

    <h2 id="parabens">Parabéns pela sua compra</h2>

    <p>Nome: <%= nome %></p>
    <p>Endereço: <%= endereco %></p>
    <p>CEP: <%= cep %></p>
    <p>Telefone: <%= telefone %></p>




</body>
</html>
