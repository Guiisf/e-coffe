<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
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
                              <button type="submit">Delete</button>
                          </form>
                      </td>
                  </tr>
        </c:forEach>
    </table>
  </div>
</body>
</html>