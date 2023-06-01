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
        <div id="area-menu">
                            <a href="index.jsp">Home</a>
                            <a href="produtos.jsp">Produtos</a>
                            <a href="quemSomos.jsp">Quem Somos</a>
                            <a href="registro.jsp">Registrar</a>
                        </div>

	<style>
        .zoom {
            transition: transform .2s;
            width: 200px;
        }

        .zoom:hover {
            transform: scale(1.1);
        }
    </style>
</head>
<body>
	<header>

		<h1>Compras</h1>
	</header>

		<div class="product">
			<img class="zoom" src="img/cafe3.png" alt="Imagem do produto">
			<div class="description">
				<h2>Starbucks</h2>
                                <br>
				<h3>Descrição do Produto</h3>
                                <p>O café Starbucks é uma marca americana que foi fundada em 1971 em Seattle, Washington. A empresa é conhecida por suas cafeterias espalhadas por todo o mundo, que oferecem uma ampla variedade de bebidas à base de café, chás, sucos e comidas.</p>

				<h3>Preço do Produto</h3>
                                <p>R$ 33,90</p>
			 <button>Comprar <a href="carrinho.jsp"></button>


			</div>
		</div>

<footer>
            <p>&copy; 2023 WeLoveCoffee. Todos os direitos reservados.</p>

        </footer>

    </body>
    </html>


