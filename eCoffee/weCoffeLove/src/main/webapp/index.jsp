<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home - WeLoveCoffee</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="index.css">
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
            <a href="index.html">Home</a>
            <a href="produtos.jsp">Produtos</a>
            <a href="quemSomos.html">Quem Somos</a>
            <a href="registro.html">Registrar</a>
        </div>
    </div>
</header>

<div id="area-principal">

    <div id="area-postagens">


        <div class="postagem">


            <h2>Nossa nova loja de café na Rua Augusta</h2>

            <img width="620px" src="img/Loja1.png">
            <p>
                Com um ambiente moderno e aconchegante, nossa loja oferece uma experiência única para os amantes de
                café, com uma seleção de grãos de alta qualidade e bebidas especiais preparadas por baristas
                experientes.

                <br>Além disso, nossa loja oferece uma seleção de pães, bolos e doces caseiros, todos preparados com
                ingredientes frescos e cuidadosamente selecionados.
                <br>
                <br>Convidamos você a visitar nossa nova loja de café na Rua Augusta.
                <br>Esperamos vê-lo em breve!
            </p>

        </div>

        <div class="postagem">

            <h2>Um café realmente especial</h2>

            <img width="620px" src="img/Producao1.png">
            <p>
                Estamos diretamente envolvidos em todas as etapas da cadeia do café: do cultivo até o serviço da xícara.
                <br>Afim de controlarmos a qualidade do produto final oferecido, nossa equipe está sempre atenta às
                novas tecnologias e melhores práticas do mercado.
            </p>

        </div>

        <div class="postagem">

            <h2>Kits de Café</h2>

            <img width="620px" src="img/KitCafe.png">
            <p>
                Adquirir um kit de café não apenas é uma maneira de desfrutar de uma experiência única em casa, mas
                também é uma excelente opção de presente para amigos e familiares que adoram café.
                <br>Imagine surpreender alguém especial com um kit que inclui um pacote de café torrado fresco, uma
                prensa francesa, um filtro de café e uma caneca exclusiva WeLoveCoffee.
            </p>

        </div>

    </div>

    <div id="area-lateral">
        <div class="conteudo-lateral">
            <h3>Notícias do Café</h3>
            <div class="postagem-lateral">
                <p>
                    A produção de café no Brasil deve ser menor este ano devido às condições climáticas adversas.
                </p>
                <a href="">Leia Mais</a>
            </div>

            <div class="postagem-lateral" style="border-bottom: none;">
                <p>
                    A Nestlé anunciou que investirá US$ 2,1 bilhões na expansão de sua produção de café sustentável.
                </p>
                <a href="">Leia Mais</a>
            </div>
        </div>

        <div class="conteudo-lateral">
            <h3>Categorias de Cafés</h3>

            <a href="">Arábica</a><br>
            <a href="">Robusta</a><br>
            <a href="">Blend</a><br>
            <a href="">Orgânico</a><br>
            <a href="">Fair trade</a><br>
        </div>

    </div>

    <div id="rodape">

    </div>

</div>



<script>

    var successMessage = '<%= request.getSession().getAttribute("successMessage") %>';


    <% request.getSession().removeAttribute("successMessage"); %>



    if (successMessage) {
        var successDiv = document.createElement('div');
        successDiv.classList.add('success-message');
        successDiv.textContent = successMessage;

        var container = document.getElementById('area-principal');
        container.insertBefore(successDiv, container.firstChild);
    }
</script>


</body>
</html>


<footer>
    <p>&copy; 2023 WeLoveCoffee. Todos os direitos reservados.</p>
</footer>
</body>
</html>