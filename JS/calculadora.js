function somar(a, b) {
    return a + b
}

function dividir(a, b) {
    if (b === 0) {
        return "inderteminado";
    }
    return a / b;
}

function multiplicar(a, b) {
    return a * b;
}

function potenciacao(a, b) {
    return a ** b;
}

function raiz(a, b) {
    if (a < 0) {
        return "numero complexo"
    }
    return a ** (1 / b);
}

function subtracao(a, b) {
    //pra caso queria subtrair dois números absolutos.
    return a - b;
}

function validarNumero(a, b) {
    if (isNaN(a) || isNaN(b)) {
        return false
    }
    return true;
}

const funcoes = [somar, subtracao, dividir, multiplicar, potenciacao, raiz];

function operacao(i, a, b) {
    if (validarNumero(a, b) === false) {
        return "Número inválido!"
    }
    return funcoes[i](a, b);

}

function ligarCalculadora(){
    let index = prompt(`
        Escolha sua operação:
        1 - somar
        2 - subtração
        3 - divisão
        4 - multiplicação
        5 - potenciação
        6 - raíz
    `);
    
    if(isNaN(index) || (index < 1 && index > 6) ){
        alert("Entrada inválida :(");
    }else{
        let numA = prompt("Digite o primeiro número: ");
        numA = parseInt(numA);
        let numB = prompt("Digite o segundo número: ");
        numB = parseInt(numB);
        
        document.getElementById('calculadora').innerHTML += `
            O resultado da expressão é: ${operacao(index - 1, numA, numB)} <br>
        `
    }
}


