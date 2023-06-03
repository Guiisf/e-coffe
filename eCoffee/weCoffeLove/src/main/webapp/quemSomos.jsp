<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quem Somos - WeLoveCoffee</title>
    <link href="quemsomos.css" rel="stylesheet">
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
        <div id="area-menu">
            <a href="index.jsp">Home</a>
            <a href="produtos.jsp">Produtos</a>
            <a href="quemSomos.jsp">Quem Somos</a>

        </div>
    </div>
</header>
<main>
    <img alt="Logo WeLoveCoffee" class="right" id="foto1" src="img/nova%20york.png"/>
    <div id="quem-somos">
        <h3>O foco é distribuir o melhor café do mundo (literalmente).</h3>
        <p>WeLoveCoffee é o resultado do nosso amor por cafés premium ao redor do mundo. Somos dedicados a selecionar
            os melhores grãos,
            cuidadosamente torrados à perfeição, para proporcionar uma experiência de café excepcional. Nosso foco em
            qualidade,
            habilidade artesanal e profundo apreço pela arte da preparação de café nos torna únicos.
            Entre no WeLoveCoffee e se delicie com a melhor seleção de cafés premium do mundo,
            enquanto convidamos você a embarcar em uma jornada de sabores requintados e prazeres sensoriais.
        </p>
        <h3>Nossa História</h3>
        <p>Em 2023, os programadores Bruno, Levy e Davi, apaixonados por café, uniram suas habilidades para criar o
            aplicativo WeLoveCoffee.
            Inspirados pela cultura To Go do Japão, desenvolveram uma plataforma inovadora que permitia aos usuários
            encomendar café premium de forma prática e
            personalizada. Com a adição dos talentosos programadores Guilherme, Carlos e Heron, o WeLoveCoffee teve um
            sucesso instantâneo, conquistando o coração
            dos clientes com uma experiência única que combinava tecnologia, qualidade e paixão pelo café.
        </p>
    </div>
</main>
<footer>
    <p>&copy; 2023 WeLoveCoffee. Todos os direitos reservados.</p>

</footer>

</body>
</html>