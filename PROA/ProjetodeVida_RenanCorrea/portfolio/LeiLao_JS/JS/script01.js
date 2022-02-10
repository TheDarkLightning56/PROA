function Comprar() {
    var Produto = document.getElementById("produto").value;
    var Nome = document.getElementById("nome").value;
    var Preco = parseFloat(document.getElementById("preco").value);
    var Quant = parseInt(document.getElementById("quant").value);


    switch (Produto) {
        case 1:
            document.getElementById("res").innerHTML = Nome +
                ", você comprou o modelo Air Jordan 1 Off-White<br>";
            break;
        case 2:
            document.getElementById("res").innerHTML = Nome +
                ", você comprou o modelo Air Jordan 1 Royal Blue<br>";
            break;
        case 3:
            document.getElementById("res").innerHTML = Nome +
                ", você comprou o modelo Air Jordan 1 Low Cactus Jack<br>";
            break;
        case 4:
            document.getElementById("res").innerHTML = Nome +
                ", você comprou o modelo Air Jordan 1 Pine Green<br>";
            break;
        case 5:
            document.getElementById("res").innerHTML = Nome +
                ", você comprou o modelo Air Jordan 12 Gym Red<br>";
            break;
        case 6:
            document.getElementById("res").innerHTML = Nome +
                ", você comprou o modelo Air Jordan 6 Reflections<br>";
            break;


    }
    if (Quant <= 5) {
        var Final = Preco * Quant;
        var Desconto = Final - (Final * 0.025);

        document.getElementById("res").innerHTML = Nome +
            ", você comprou o modelo: <br><strong>" + Produto + "</strong><br>" +
            "Valor com as quantidades citadas é : R$" + Final +
            "<br>Valor de Desconto: 2.5%<br>" + "Valor Final: R$" + Desconto + "</p>";
    } else {
        if (Quant > 5 && Quant <= 10) {
            var Final = Preco * Quant;
            var Desconto = Final - (Final * 0.035);

            document.getElementById("res").innerHTML = Nome +
                ", você comprou o modelo: <br><strong>" + Produto + "</strong><br>" +
                "Valor com as quantidades citadas é : R$" + Final +
                "<br>Valor de Desconto: 2.5%<br>" + "Valor Final: R$" + Desconto + "</p>";
        } else {
            if (Quant > 10) {
                var Final = Preco * Quant;
                var Desconto = Final - (Final * 0.05);
                document.getElementById("res").innerHTML = Nome +
                    ", você comprou o modelo: <br><strong>" + Produto + "</strong><br>" +
                    "Valor com as quantidades citadas é : R$" + Final +
                    "<br>Valor de Desconto: 2.5%<br>" + "Valor Final: R$" + Desconto + "</p>";
            }
        }
    }







}