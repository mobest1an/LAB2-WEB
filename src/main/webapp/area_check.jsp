<%@ page import="tools.Result" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: erikk
  Date: 06.10.2021
  Time: 8:18
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
<%
    double x = (double) request.getAttribute("x");
    double y = (double) request.getAttribute("y");
    double r = (double) request.getAttribute("r");
    String hit = (String) request.getAttribute("hit");
    double time = (double) request.getAttribute("time");

    Result result = new Result(x, y, r, hit, time);
    ArrayList<Result> lastResults = (ArrayList<Result>) request.getServletContext().getAttribute("last-results");
    if (lastResults == null) {
        lastResults = new ArrayList<>();
    }
    lastResults.add(result);
    request.getServletContext().setAttribute("last-results", lastResults);
%>

<div class="container-main container-result container-current-result">
    <div class="current-result">
        <div class="result-title">Результат:</div>
        <table id="result-table">
            <tr>
                <th>
                    <div class="result-key"><span>Координата X:</span></div>
                </th>
                <th>
                    <div class="result-key">Координата Y:</div>
                </th>
                <th>
                    <div class="result-key">Параметр R:</div>
                </th>
                <th>
                    <div class="result-key">Попала:</div>
                </th>
                <th>
                    <div class="result-key">Время выполнения скрипта:</div>
                </th>
            </tr>
            <tr>
                <td>
                    <div class="result-value"><%=x%></div>
                </td>
                <td>
                    <div class="result-value"><%=y%></div>
                </td>
                <td>
                    <div class="result-value"><%=r%></div>
                </td>
                <td>
                    <div class="result-value"><%=hit%></div>
                </td>
                <td>
                    <div class="result-value"><%=time%> мкс</div>
                </td>
            </tr>
        </table>
    </div>

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
