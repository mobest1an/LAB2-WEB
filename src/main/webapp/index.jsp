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
                <svg class="area" width="221" height="221" viewbox=" 0 0 400 400">
                    <line x1="0%" y1="50%" x2="100%" y2="50%" stroke="black"></line>
                    <line x1="50%" y1="0%" x2="50%" y2="100%" stroke="black"></line>
                    <text x="48%" y="10%" class="mal">-- R</text>
                    <text x="48%" y="30%" class="mal">-- R/2</text>
                    <text x="48%" y="70%" class="mal">-- -R/2</text>
                    <text x="48%" y="90%" class="mal">-- -R</text>
                    <text x="10%" y="51%" class="mal">|</text>
                    <text x="30%" y="51%" class="mal">|</text>
                    <text x="50%" y="51%" class="mal">0</text>
                    <text x="70%" y="51%" class="mal">|</text>
                    <text x="90%" y="51%" class="mal">|</text>
                    <text x="7%" y="48%" class="mal">-R</text>
                    <text x="27%" y="48%" class="mal">-R/2</text>
                    <text x="67%" y="48%" class="mal">R/2</text>
                    <text x="87%" y="48%" class="mal">R</text>
                    <rect fill="#4169E1" x="30.5%" y="50%" width="19.5%" height="39%" fill-opacity="0.6"></rect>
                    <polygon fill="#4169E1" fill-opacity="0.6" points="42,200 200,200 200,36"></polygon>
                    <path d="M 200 36 C 260 45 350 45 362 200 L 200 200 Z" fill="#4169E1" fill-opacity="0.6"></path>
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
        <%
            ArrayList<Result> lastResults = (ArrayList<Result>) request.getServletContext().getAttribute("last-results");
            if (lastResults.size() != 0) {
                out.println("<div class=\"container-main container-result\">");
                out.println("<div class=\"last-results\">");
                out.println("<div class=\"last-results-title\">Прошлые результаты:</div>");
                out.println("<table id=\"last-results-table\"><tr>");
                out.println("<th><div class=\"last-results-key\"><span>Координата X:</span></div></th>");
                out.println("<th><div class=\"last-results-key\">Координата Y:</div></th>");
                out.println("<th><div class=\"last-results-key\">Параметр R:</div></th>");
                out.println("<th><div class=\"last-results-key\">Попала:</div></th>");
                out.println("<th><div class=\"last-results-key\">Время выполнения:</div></th></tr>");
                for (Result result : lastResults) {
                    out.println("<tr class='request'>");
                    out.println("<td class='parameter'><div>" + result.getX() + "</div></td>");
                    out.println("<td class='parameter'><div>" + result.getY() + "</div></td>");
                    out.println("<td class='parameter'><div>" + result.getR() + "</div></td>");
                    out.println("<td class='parameter'><div>" + result.getHit() + "</div></td>");
                    out.println("<td class='parameter'><div>" + result.getTime() + " мкс" + "</div></td>");
                    out.println("</tr>");
                }
                out.println("</table>");
                out.println("</div></div>");
            }
        %>
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
