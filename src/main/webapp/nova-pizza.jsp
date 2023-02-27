<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 27/02/2023
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>Criar Pizza</title>
</head>
<body>
<h1>Criar Pizza</h1>
<form method="POST" action="cardapio">
    <label for="nome">Nome: </label>
    <input type="text" name="nome" id="nome" required>
    <br>
    <label for="ingredientes">Ingredientes:</label>
    <input type="text" name="ingredientes"  id="ingredientes" required>
    <br>
    <label for="preco">Preço:</label>
    <input type="number" name="preco" step="0.01" min="0" id="preco" required>
    <br>
    <button type="submit">Salvar</button>
</form>

</body>
</html>
