const calculadora = require('../aulas/calculadora.js');

// Agora que notei que isso não era necessário aqui.
// const funcoes = [
//     calculadora.somar, 
//     calculadora.subtracao, 
//     calculadora.dividir, calculadora.multiplicar, 
//     calculadora.potenciacao, 
//     calculadora.raiz
// ];
describe('Teste de Cobertura de Condições simples', () => {

    test('Validar os números de entrada da calculadora', () => {
        expect(calculadora.validarNumero(2, 2)).toBe(true);
    });
    test('Invalidar os números de entrada da calculadora', () => {
        expect(calculadora.validarNumero("a", "b")).toBe(false);
    });

    test('Deve somar 2 + 2 e o resultado deve ser o 4', () => {
        expect(calculadora.somar(2, 2)).toBe(4);
    });

    test('Deve didir 20 por 5 e o resultado deve ser o 4', () => {
        expect(calculadora.dividir(20, 5)).toBe(4);
    });
    test('Deve visualiar alerta "inderteminado" ao dividir por 0', () => {
        expect(calculadora.dividir(20, 0)).toBe('inderteminado');
    });

    test('Deve multiplicar 4 por 5 e o resultado deve ser 20', () => {
        expect(calculadora.multiplicar(4, 5)).toBe(20);
    });

    test('Deve elevar 2 a 5ª potência e o resultado deve ser 32', () => {
        expect(calculadora.potenciacao(2, 5)).toBe(32);
    });

    test('Deve fazer a raíz cúbica de 27 e o resultado deve ser 3', () => {
        expect(calculadora.raiz(27, 3)).toBe(3);
    });
    test('Deve fazer a raíz cúbica de -27 e o resultado deve ser -3', () => {
        expect(calculadora.raiz(-27, 3)).toBe(-3);
    });
    test('Deve alertar "numero complexo" ao fornecer um número negativo e raíz ímpar', () => {
        expect(calculadora.raiz(-1, 2)).toBe('numero complexo');
    });

    test('Deve fazer uma subtração de números (hipoteticamente) absolutos de 30 por 10 e resultar 20', () => {
        expect(calculadora.subtracao(30, 10)).toBe(20);
    });
    
});

//O CÓDIGO USA A FUNÇÃO "prompt()" E ELA NÃO É COMPATÍVEL COM O NODE.JS SOZINHA
//PORTANTO NÃO É POSSÍVEL TESTAR A FUNÇÃO ligarCalculadora()
//EU PODERIA ADAPTAR A FUNÇÃO PARA QUE FOSSE AUTOMÁTICA, APENAS NÃO DESEJO INVESTIR
//MEU TEMPO NISSO AGORA. ATÉ PORQUE EU ULTRAPASSEI O ESCOPO PLANEJADO DESTA CALCULADORA.
describe('Teste de Cobertura da operação', () => {
    
    test('Testar múltiplas combinações de operações', () => {
        // entrada inválida
        expect(calculadora.operacao(0, "a", "b")).toBe("Número inválido!");

        // 0 = soma
        expect(calculadora.operacao(0, 1, 1)).toBe(2);

        // 1 = subtração
        expect(calculadora.operacao(1, 1, 1)).toBe(0);

        // 2 = dividir
        expect(calculadora.operacao(2, 1, 1)).toBe(1);
        expect(calculadora.operacao(2, 1, 0)).toBe('inderteminado');

        // 3 = multiplicar
        expect(calculadora.operacao(3, 1, 1)).toBe(1);

        // 4 = potenciação
        expect(calculadora.operacao(4, 1, 1)).toBe(1);
        
        // 5 = raiz
        expect(calculadora.operacao(5, 1, 2)).toBe(1);
        expect(calculadora.operacao(5, -8, 3)).toBe(-2);
        expect(calculadora.operacao(5, -1, 2)).toBe("numero complexo");
    });

});