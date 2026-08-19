const verificador = require('../aulas/verificar-idade.js');

describe('Testes de cobertura de instruções', () => {

    test('Deve validar maioridade quando idade for maior ou igual a 18', () => {
        expect(verificador.verificarIdade(18)).toBe('Maior de idade');
    });

    test('Deve validar menoridade quando idade for menor que 18', () => {
        expect(verificador.verificarIdade(17)).toBe('Menor de idade');
    });
});