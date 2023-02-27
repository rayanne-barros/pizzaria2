<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 27/02/2023
  Time: 19:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>Cardápio de Pizzas</title>
</head>
<body>
<h1>Cardápio de Pizzas</h1>
<table class="table">
    <tr>
        <th scope="col">Nome</th>
        <th scope="col">Ingredientes</th>
        <th scope="col">Preço</th>
        <th scope="col">Ações</th>
    </tr>

    <c:forEach items="${cardapio}" var="pizza">
        <tr>
            <td>${pizza.nome}</td>
            <td>${pizza.ingredientes}</td>
            <td>R$ ${pizza.preco}</td>
            <td>
                <a href="editar-pizza?nome=${pizza.nome}">Editar</a>
                <a href="excluir-pizza?nome=${pizza.nome}">Excluir</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="nova-pizza.jsp">Adicionar Pizza</a>
</body>
</html>
