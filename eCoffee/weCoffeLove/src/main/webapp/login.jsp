<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="login.css">
    <style>
        .logo-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="logo-container">
            <img src="img/logo.png" alt="Logo" class="logo">
        </div>

        <div class="login-section">
            <h2>Login</h2>

            <form action="/weCoffeLove/login" method="post">
                <div class="form-group">
                    <label for="username">Nome</label>
                    <input type="text" class="form-control" id="username" name="username">
                </div>

                <div class="form-group">
                    <label for="password">Senha</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>

                <div id="error-message" class="error-message"></div>

                <button type="submit" class="btn btn-primary">Login</button>
                <button type="button" id="register-button" class="btn btn-secondary">Registrar</button>
            </form>

            <script>
                var registerButton = document.getElementById('register-button');
                registerButton.addEventListener('click', function() {
                    window.location.href = 'registro.jsp';
                });
            </script>

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
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>

</html>
