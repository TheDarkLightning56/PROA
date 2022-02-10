function quadrado() {
    n1 = parseInt(document.getElementById("n1").value)

    quadrado = n1 * n1;


    document.getElementById("res").value = quadrado;

    document.getElementById("numResultado").innerHTML = " O quadrado do número " + n1 + " é igual a " + quadrado;
}