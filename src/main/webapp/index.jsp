<%@ page import="java.util.ArrayList" %>
<%@ page import="tools.Result" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: erikk
  Date: 04.10.2021
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>LAB 2</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
<header class="main-header">
    <div class="container-main">
        <div class="logo">
            <img src="img/logo.jpg" width="150" height="150" alt="ИТМО ВТ">
        </div>
        <div class="university-title">
            <h1>Университет ИТМО</h1>
        </div>
        <div class="lab-title">
            <ul>
                <li>Карапетян Эрик Акопович P3215</li>
                <li>Вариант 15510</li>
                <li id="clock">00:00:00</li>
            </ul>
        </div>
    </div>
</header>

<section class="program">
    <div class="container-main container-program">
        <div class="program-parts">
            <span id="test"></span>
            <div class="program-img">
                <svg class="area" viewBox="0 0 300 300">
                    <path style="fill-opacity: 0.6; fill: rgb(47, 154, 255);" transform="matrix(0, 0.488267, -0.488267, 0, 292.671631, -0.386225)" d="M 103.194 292.2 A 204.806 204.806 0 0 1 308 87.394 L 308 292.2 Z" bx:shape="pie 308 292.2 0 204.806 270 360 1@9dd7fd0f" bx:origin="0.5 0.499702"></path>
                    <line style="stroke-opacity: 0.6; stroke: rgb(0, 0, 0);" x1="150" y1="25" x2="150" y2="275"></line>
                    <line style="stroke-opacity: 0.6; stroke: rgb(0, 0, 0);" x1="150" y1="25" x2="150" y2="275" transform="matrix(0, 1, -1, 0, 300, 0)"></line>
                    <rect x="100" y="150" width="50" height="100" style="fill: rgb(47, 154, 255); fill-opacity: 0.6;"></rect>
                    <path d="M 38.238 47.448 L 138.238 147.448 L 38.238 147.448 L 38.238 47.448 Z" style="fill: rgb(47, 154, 255); fill-opacity: 0.6;" transform="matrix(-0.000035, -1, 1, -0.000035, 2.556837, 188.243164)" bx:shape="triangle 38.238 47.448 100 100 0 0 1@283add74"></path>
                    <%
                        double maxR = 0;
                        ArrayList<Result> lastResults = (ArrayList<Result>) request.getServletContext().getAttribute("last-results");
                        if (lastResults.size() != 0) {
                            for (Result result : lastResults) {
                                double reqR = result.getR();
                                if (reqR > maxR) {
                                    maxR = reqR;
                                }
                            }
                            for (Result result : lastResults) {
                                double reqX = result.getX();
                                double reqY = result.getY();
                                double reqR = result.getR();
                                double coeff = 100 * (reqR / maxR);
                                double x = reqX / reqR * coeff + 150;
                                double y = 150 - (reqY) / reqR * coeff;
                                if (reqX >= 0 && reqY >= 0 && (Math.pow(reqX, 2) + Math.pow(reqY, 2)) <= Math.pow(maxR, 2)) {
                                    out.println("<circle cx=\"" + x + "\" cy=\"" + y + "\" r=\"3\" fill=\"green\" />");
                                } else if (reqX <= 0 && reqY >= 0 && reqX - reqY >= (-maxR)) {
                                    out.println("<circle cx=\"" + x + "\" cy=\"" + y + "\" r=\"3\" fill=\"green\" />");
                                } else if (reqX <= 0 && reqY <= 0 && reqX >= -maxR / 2 && reqY >= -maxR) {
                                    out.println("<circle cx=\"" + x + "\" cy=\"" + y + "\" r=\"3\" fill=\"green\" />");
                                } else {
                                    out.println("<circle cx=\"" + x + "\" cy=\"" + y + "\" r=\"3\" fill=\"red\" />");
                                }
                            }
                        }
                    %>
                </svg>
            </div>
            <form id="main-form" action="start" onsubmit="return validate()" method="get">
                <div class="x-interval intervals">
                    <p id="x-title">Выберите координату X:</p>
                    <select name="x-change" id="x-change">
                        <option value="-2">-2</option>
                        <option value="-1.5">-1.5</option>
                        <option value="-1">-1</option>
                        <option value="-0.5">-0.5</option>
                        <option selected="selected" value="0">0</option>
                        <option value="0.5">0.5</option>
                        <option value="1">1</option>
                        <option value="1.5">1.5</option>
                        <option value="2">2</option>
                    </select>
                </div>
                <div class="y-interval intervals">
                    <p id="y-title">Введите координату Y:</p>
                    <input type="text" id="y-change" name="y-change" placeholder="Число в диапазоне (-3 ... 3)"
                           oninput="onInputYCheck()">
                </div>
                <div class="r-interval intervals">
                    <p id="r-title">Выберите параметр R:</p>
                    <select name="r-change">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <div class="buttons">
                    <div class="clear">
                        <input type="button" id="btn-clear" class="btn btn-clear" value="Очистить">
                    </div>
                    <div class="check">
                        <input type="submit" class="btn btn-check" value="Проверить точку">
                    </div>
                </div>
            </form>
        </div>
<%--        <%--%>
<%--            if (lastResults.size() != 0) {--%>
<%--                out.println("<div class=\"container-main container-result\">");--%>
<%--                out.println("<div class=\"last-results\">");--%>
<%--                out.println("<div class=\"last-results-title\">Прошлые результаты:</div>");--%>
<%--                out.println("<table id=\"last-results-table\"><tr>");--%>
<%--                out.println("<th><div class=\"last-results-key\"><span>Координата X:</span></div></th>");--%>
<%--                out.println("<th><div class=\"last-results-key\">Координата Y:</div></th>");--%>
<%--                out.println("<th><div class=\"last-results-key\">Параметр R:</div></th>");--%>
<%--                out.println("<th><div class=\"last-results-key\">Попала:</div></th>");--%>
<%--                out.println("<th><div class=\"last-results-key\">Время выполнения:</div></th></tr>");--%>
<%--                for (Result result : lastResults) {--%>
<%--                    out.println("<tr class='request'>");--%>
<%--                    out.println("<td class='parameter'><div>" + result.getX() + "</div></td>");--%>
<%--                    out.println("<td class='parameter'><div>" + result.getY() + "</div></td>");--%>
<%--                    out.println("<td class='parameter'><div>" + result.getR() + "</div></td>");--%>
<%--                    out.println("<td class='parameter'><div>" + result.getHit() + "</div></td>");--%>
<%--                    out.println("<td class='parameter'><div>" + result.getTime() + " мкс" + "</div></td>");--%>
<%--                    out.println("</tr>");--%>
<%--                }--%>
<%--                out.println("</table>");--%>
<%--                out.println("</div></div>");--%>
<%--            }--%>
<%--        %>--%>
    </div>
</section>

<footer class="main-footer">
    <div class="container-main">

    </div>
</footer>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>
