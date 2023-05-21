<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>

<body>
    <div class="container">
        <img src="img/logo.png" alt="Logo" class="logo">

        <div class="login-section">
            <h2>Login</h2>

            <form action="/weCoffeLove/login" method="post">
                <label for="username">Username</label>
                <input type="text" id="username" name="username">

                <label for="password">Password</label>
                <input type="password" id="password" name="password">

                <div id="error-message" class="error-message"></div>

                <button type="submit">Login</button>
                <button type="button" id="register-button">Registrar</button>
            </form>

            <script>
                var registerButton = document.getElementById('register-button');
                registerButton.addEventListener('click', function() {
                    window.location.href = 'registro.html';
                });
            </script>



            <form action="/weCoffeLove/index.html" method="get">
                <p>Se você preferir, pode navegar no site sem fazer login.</p>
                <button type="submit">Entrar sem login</button>
            </form>
        </div>
    </div>

   <script>
       var form = document.querySelector('form');
       form.addEventListener('submit', function(event) {
           var usernameInput = document.getElementById('username');
           var passwordInput = document.getElementById('password');
           var errorMessage = document.getElementById('error-message');

           if (usernameInput.value === '' || passwordInput.value === '') {
               event.preventDefault();
               errorMessage.textContent = 'Por favor, preencha todos os campos.';
               errorMessage.style.display = 'block';
           } else {
               errorMessage.style.display = 'none';
           }
       });
   </script>


</body>

</html>
