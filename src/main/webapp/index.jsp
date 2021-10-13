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
            <div class="program-img">
                <svg class="area" viewBox="0 0 300 300">
                    <defs>
                        <path id="path-0" d="M 235.166 158.391 C 247.43 163.058 259.865 165.851 265.522 171.507 C 268.039 173.65 268.71 170.567 270.019 169.259 L 270.394 169.259 C 271.496 167.054 271.893 166.801 271.893 164.012" style="fill: none;"></path>
                        <path id="path-1" d="M 242.286 158.765 C 247.964 158.765 250.103 162.138 251.655 162.138 L 251.655 162.513" style="fill: none;"></path>
                        <path id="path-2" d="M 53.779 154.643 L 55.278 158.391 C 56.205 159.503 59.156 163.263 60.899 163.263" style="fill: none;"></path>
                        <path id="path-3" d="M 168.457 42.588 L 172.58 45.211 C 175.034 46.438 176.366 47.124 177.826 48.584" style="fill: none;"></path>
                        <path id="path-4" d="M 157.589 243.462 L 162.086 247.585 C 163.158 248.657 166.083 250.958 167.333 250.958" style="fill: none;"></path>
                    </defs>
                    <path style="fill-opacity: 0.6; fill: rgb(47, 154, 255);" transform="matrix(0, 0.488267, -0.488267, 0, 292.671631, -0.386225)" d="M 103.194 292.2 A 204.806 204.806 0 0 1 308 87.394 L 308 292.2 Z" bx:shape="pie 308 292.2 0 204.806 270 360 1@9dd7fd0f" bx:origin="0.5 0.499702"></path>
                    <rect x="100" y="150" width="50" height="100" style="fill: rgb(47, 154, 255); fill-opacity: 0.6;"></rect>
                    <path d="M 38.238 47.448 L 138.238 147.448 L 38.238 147.448 L 38.238 47.448 Z" style="fill: rgb(47, 154, 255); fill-opacity: 0.6;" transform="matrix(-0.000035, -1, 1, -0.000035, 2.556837, 188.243164)" bx:shape="triangle 38.238 47.448 100 100 0 0 1@283add74"></path>
                    <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 10px; white-space: pre;" transform="matrix(1, 0, 0, 1, 58.462498, 104.84375)"><tspan x="187.945" y="39.215">R</tspan><tspan x="187.945" dy="1em">​</tspan></text>
                    <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 10px; white-space: pre;" transform="matrix(1, 0, 0, 1, -32.9375, 14.443749)"><tspan x="187.945" y="39.215">R</tspan><tspan x="187.945" dy="1em">​</tspan></text>
                    <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 10px; white-space: pre;" transform="matrix(1, 0, 0, 1, -143.237503, 104.84375)"><tspan x="187.945" y="39.215">-R</tspan><tspan x="187.945" dy="1em">​</tspan></text>
                    <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 10px; white-space: pre;" transform="matrix(1, 0, 0, 1, -32.9375, 214.443741)"><tspan x="187.945" y="39.215">-R</tspan><tspan x="187.945" dy="1em">​</tspan></text>
                    <line style="stroke: rgb(0, 0, 0); stroke-opacity: 0.6;" x1="147" y1="200" x2="153" y2="200.001"></line>
                    <line style="stroke: rgb(0, 0, 0); stroke-opacity: 0.6;" x1="97" y1="150" x2="103" y2="150" transform="matrix(0, 1, -1, 0, 250, 50)"></line>
                    <line style="stroke: rgb(0, 0, 0); stroke-opacity: 0.6;" x1="147" y1="100" x2="153" y2="100.001"></line>
                    <line style="stroke: rgb(0, 0, 0); stroke-opacity: 0.6;" x1="247" y1="150" x2="253" y2="150" transform="matrix(0, 1, -1, 0, 400, -100)"></line>
                    <line style="stroke: rgb(0, 0, 0); stroke-opacity: 0.6;" x1="197" y1="150" x2="203" y2="150" transform="matrix(0, 1, -1, 0, 350, -50)"></line>
                    <line style="stroke-opacity: 0.6; stroke: rgb(0, 0, 0);" x1="150" y1="25" x2="150" y2="275" transform="matrix(0, 1, -1, 0, 300, 0)"></line>
                    <line style="stroke: rgb(0, 0, 0); stroke-opacity: 0.6;" x1="147" y1="250" x2="153" y2="250" transform="matrix(1, 0, 0, 1, 0.000102, -0.000061)"></line>
                    <line style="stroke-opacity: 0.6; stroke: rgb(0, 0, 0);" x1="150" y1="25" x2="150" y2="275"></line>
                    <line style="stroke: rgb(0, 0, 0); stroke-opacity: 0.6;" x1="147" y1="50" x2="153" y2="50.001"></line>
                    <line style="stroke: rgb(0, 0, 0); stroke-opacity: 0.6;" x1="47" y1="150" x2="53" y2="150" transform="matrix(0, 1, -1, 0, 200, 100)"></line>
                    <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 10px; white-space: pre;" transform="matrix(1, 0, 0, 1, -32.9375, 64.521873)"><tspan x="187.945" y="39.215">R/2</tspan><tspan x="187.94500732421875" dy="1em">​</tspan></text>
                    <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 10px; white-space: pre;" transform="matrix(1, 0, 0, 1, 4.2625, 104.921875)"><tspan x="187.945" y="39.215">R/2</tspan><tspan x="187.94500732421875" dy="1em">​</tspan></text>
                    <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 10px; white-space: pre;" transform="matrix(1, 0, 0, 1, -32.9375, 164.453125)"><tspan x="187.945" y="39.215">-R/2</tspan><tspan x="187.94500732421875" dy="1em">​</tspan></text>
                    <text style="fill: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 10px; white-space: pre;" transform="matrix(1, 0, 0, 1, -97.4375, 104.953125)"><tspan x="187.945" y="39.215">-R/2</tspan><tspan x="187.94500732421875" dy="1em">​</tspan></text>
                    <%
                        ArrayList<Result> lastResults = (ArrayList<Result>) application.getAttribute("last-results");
                        if (lastResults.size() != 0) {
                            double reqR = lastResults.get(lastResults.size() - 1).getR();
                            out.println("<text x=\"5%\" y=\"10%\" fill=\"black\" fill-opacity=0.6>R = " + (int) reqR + "</text>");
                            for (Result result : lastResults) {
                                double reqX = result.getX();
                                double reqY = result.getY();
                                double coeff = 100;
                                double x = reqX / reqR * coeff + 150;
                                double y = 150 - (reqY) / reqR * coeff;
                                if (reqX >= 0 && reqY >= 0 && (Math.pow(reqX, 2) + Math.pow(reqY, 2)) <= Math.pow(reqR, 2)) {
                                    out.println("<circle cx=\"" + x + "\" cy=\"" + y + "\" r=\"3\" fill=\"green\" />");
                                } else if (reqX <= 0 && reqY >= 0 && reqX - reqY >= (-reqR)) {
                                    out.println("<circle cx=\"" + x + "\" cy=\"" + y + "\" r=\"3\" fill=\"green\" />");
                                } else if (reqX <= 0 && reqY <= 0 && reqX >= -reqR / 2 && reqY >= -reqR) {
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
        <%
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
