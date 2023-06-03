<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home - WeLoveCoffee</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="index.css">
     <link rel="stylesheet" href="produtos.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,100&display=swap" rel="stylesheet">
</head>
<body>
<header>


    <div id="area-cabecalho">
     <%@ include file="header.jsp" %>

        <div id="area-logo">
            <img src="img/logo.png" alt="Logo WeLoveCoffee">
        </div>
       <div id="area-menu">
                   <a href="index.jsp">Home</a>
                   <a href="produtos.jsp">Produtos</a>
                   <a href="quemSomos.jsp">Quem Somos</a>

               </div>
    </div>
</header>
<main>
    <h1>Bem-vindo à WeLoveCoffee!</h1>
    <h2>Aqui você encontra os melhores cafés do mundo.</h2>

    <div class="produto">
        <img alt="Café Especial" src="img/cafe4.png">
        <h2>Café Popular</h2>
        <p>O Café Pilão é uma marca brasileira de café que existe desde 1978. Seu café é considerado um café forte e
            encorpado, com sabor e aroma intensos, típicos dos cafés brasileiros.</p>
        <span class="preco">R$ 17,99 <a href="pilao.jsp">Comprar</a> </span>
    </div>

    <div class="produto">
        <img alt="Café Especial" src="img/cafe5.png">
        <h2>Café Tradicional</h2>
        <p>A Melitta é uma marca de café alemã que foi fundada em 1908. A empresa é conhecida por seus filtros de papel
            para café, mas também produz uma variedade de cafés em grãos, moídos e solúveis.</p>
        <span class="preco">R$ 17,35 <a href="melita.jsp">Comprar</a> </span>
    </div>

    <div class="produto">
        <img alt="Café Especial" src="img/cafe1.png">
        <h2>Café Especial</h2>
        <p>O café Orfeu é um café especial produzido na região da Serra da Mantiqueira, em Minas Gerais, Brasil. A marca
            foi fundada em 2005 por uma família de produtores de café, que decidiu investir na produção de cafés de alta
            qualidade.</p>
        <span class="preco">R$ 29,29 <a href="orfeu.jsp">Comprar</a> </span>
    </div>

    <div class="produto">
        <img alt="Café Gourmet" src="img/cafe2.png">
        <h2>Café Gourmet</h2>
        <p>O café Santo Grão é uma marca de café brasileira que foi fundada em 2003. A marca é conhecida por oferecer
            uma experiência única de café, com cafeterias que possuem uma atmosfera aconchegante e sofisticada.</p>
        <span class="preco">R$ 24,90 <a href="santograo.jsp">Comprar</a> </span>
    </div>

    <div class="produto">
        <img alt="Café Premium" src="img/cafe3.png">
        <h2>Café Premium</h2>
        <p>O café Starbucks é uma marca americana que foi fundada em 1971 em Seattle, Washington. A empresa é conhecida
            por suas cafeterias espalhadas por todo o mundo, que oferecem uma ampla variedade de bebidas à base de café,
            chás, sucos e comidas.</p>
        <span class="preco">R$ 33,90 <a href="starbucks.jsp">Comprar</a> </span>
    </div>

        <footer>
            <p>&copy; 2023 WeLoveCoffee. Todos os direitos reservados.</p>

        </footer>

    </body>
    </html>

