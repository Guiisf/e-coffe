<!DOCTYPE html>


<html>
<table class="tabela-usuarios">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
    <style>

    .username {
      font-weight: bold;
      font-size: 18px;
      color: #333;
    }

    .username::after {
      content: ",";
      margin-left: 5px;
    }

    a {
      color: #333;
      text-decoration: none;
      margin-left: 10px;
    }

    a:hover {
      text-decoration: underline;
    }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        button[type=submit] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 8px 16px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }

        button[type=submit]:hover {
            background-color: #3e8e41;
        }
        a.botao {
          background-color: #4CAF50;
          color: white;
          border: none;
          padding: 8px 16px;
          text-decoration: none;
          margin: 4px 2px;
          cursor: pointer;
          border-radius: 4px;
        }

        a.botao:hover {
          background-color: #3e8e41;
        }

    </style>
</head>
<body>
  <div>

  <%@ include file="header.jsp" %>

    <h1>Usuarios</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Sobrenome</th>
            <th>Email</th>
            <th>CPF</th>
            <th>Data de Nascimento</th>
            <th>Senha</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${usuarios}">
            <tr>
                <td>${user.id}</td>
                <td>${user.nome}</td>
                <td>${user.sobrenome}</td>
                <td>${user.email}</td>
                <td>${user.cpf}</td>
                <td>${user.data_nascimento}</td>
                <td>${user.senha}</td>

                <td>
                    <form action="/weCoffeLove/delete-user" method="post">
                        <input type="hidden" id="id" name="id" value="${user.id}">
                        <button type="submit">Excluir</button>
                        <span> | </span>
                       <a href="registro.jsp?id=${user.id}&name=${user.nome}&sobrenome=${user.sobrenome}&email=${user.email}&cpf=${user.cpf}&data_nascimento=${user.data_nascimento}&senha=${user.senha}" class="botao">Atualizar</a>

                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
  </div>
</body>
</table>
</html>

