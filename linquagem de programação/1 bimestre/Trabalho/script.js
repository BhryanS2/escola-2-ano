function botao() {
    var btn = document.getElementById('btn');

    btn.addEventListener('click', function () {
        somatotal();
    });

    function random(number) {
        return Math.floor(Math.random() * (number + 1));
    }
    
    btn.onclick = function () {
        var rndCol = 'rgb(' + random(255) + ',' + random(255) + ',' + random(255) + ')';
        document.body.style.backgroundColor = rndCol;
    }
}

function somatotal() {
    var potencia1Val = parseInt(num1.value);
    var potencia2Val = parseInt(num2.value);
    var potencia = Math.pow(potencia1Val, potencia2Val);
    var div = document.getElementById('resultado');
    div.innerHTML = <span>${potencia}</span>
}