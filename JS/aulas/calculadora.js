class Calculadora{
    somar(a, b) {
        return a + b
    }

    dividir(a, b) {
        if (b === 0) {
            return "inderteminado";
        }
        return a / b;
    }

    multiplicar(a, b) {
        return a * b;
    }

    potenciacao(a, b) {
        return a ** b;
    }

    raiz(a, b) {
        if (a < 0 ){
            if(b%2 == 0) {
                return "numero complexo"
            }
            a *= -1; //existe raíz de número negativo quando o expoente é impar
            return -(a ** (1 / b));
        }
        return a ** (1 / b);
    }

    subtracao(a, b) {
        //pra caso queria subtrair dois números absolutos.
        return a - b;
    }

    validarNumero(a, b) {
        if (isNaN(a) || isNaN(b)) {
            return false
        }
        return true;
    }

    funcoes = [
        this.somar, 
        this.subtracao, 
        this.dividir, 
        this.multiplicar, 
        this.potenciacao, 
        this.raiz
    ];

    operacao(i, a, b) {
        if (this.validarNumero(a, b)) {
            return this.funcoes[i](a, b);
        }
        return "Número inválido!"
    }

    ligarCalculadora(){
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
}

//exports para testes:
module.exports = new Calculadora()


