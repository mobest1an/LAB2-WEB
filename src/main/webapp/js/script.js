window.onload = function () {
    window.setInterval(function () {
        const now = new Date();
        let clock = document.getElementById("clock");
        clock.innerHTML = now.toLocaleTimeString();
    }, 1);
};

function validate() {
    return validateY();
}

function onInputYCheck() {
    let y = document.getElementById("y-change");
    y.value = y.value.replace(",", ".");

    let yChange = document.getElementById("y-change").value;
    let yInfo = document.getElementById("y-title");

    let Y = Number(yChange);
    if (!isNaN(Y)) {
        if (yChange.length < 18) {
            if (Y > -3 && Y < 3) {
                yInfo.innerHTML = "Введите координату Y:";
                yInfo.style.color = "#536e7b";
            } else {
                yInfo.innerHTML = "Число не соответствует диапазону!";
                yInfo.style.color = "red";
            }
        } else {
            yInfo.innerHTML = "Слишком длинное число!";
            yInfo.style.color = "red";
        }
    } else {
        yInfo.innerHTML = "Это не число!";
        yInfo.style.color = "red";
    }
}

function validateY() {
    let yChange = document.getElementById("y-change").value;
    let yInfo = document.getElementById("y-title");

    if (yChange !== "") {
        let Y = Number(yChange);
        if (!isNaN(Y)) {
            if (yChange.length < 18) {
                if (Y > -3 && Y < 3) {
                    yInfo.innerHTML = "Введите координату Y:";
                    yInfo.style.color = "#536e7b";
                    return true;
                } else {
                    yInfo.innerHTML = "Число не соответствует диапазону!";
                    yInfo.style.color = "red";
                }
            } else {
                yInfo.innerHTML = "Слишком длинное число!";
                yInfo.style.color = "red";
            }
        } else {
            yInfo.innerHTML = "Это не число!";
            yInfo.style.color = "red";
        }
    } else {
        yInfo.innerHTML = "Введите число в диапазоне (-3 ... 3)!";
        yInfo.style.color = "red";
    }
    return false;
}

document.getElementById("btn-clear").addEventListener("click", clear);

function clear() {
    let title = document.getElementsByClassName("last-results-title").item(0);
    title.innerText = "Таблица очищена";

    let cancel = document.createElement("div");
    cancel.setAttribute("class", "cancel");
    cancel.innerHTML = '<input type="button" id="btn-cancel" class="btn btn-cancel" value="Отмена" onclick="window.location.reload()">';

    title.appendChild(cancel);

    document.getElementById("last-results-table").style.display = "none";

    let input = document.createElement("input");
    let form = document.getElementById("main-form");

    input.setAttribute("name", "clear");
    input.setAttribute("value", true);
    input.setAttribute("type", "hidden");
    form.appendChild(input);

}
