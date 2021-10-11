<%--
  Created by IntelliJ IDEA.
  User: erikk
  Date: 06.10.2021
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>LAB2</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
<div class="container-main container-result container-current-result">
    <h1>Ошибка, неверные значения!</h1>

    <%
        request.setAttribute("x", null);
        request.setAttribute("y", null);
        request.setAttribute("r", null);
        request.setAttribute("hit", null);
        request.setAttribute("time", null);
    %>

    <div class="back">
        <input type="button" id="btn-back" class="btn btn-back" value="Назад">
    </div>
</div>
<script src="js/backButton.js"></script>
</body>
</html>
