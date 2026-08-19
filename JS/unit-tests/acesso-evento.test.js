const acessoEvento = require('../aulas/acesso-evento');

describe('Teste de cobertura de condições - Pode acessar evento', () => {

    //maior de idade: true, ingresso válido: true
    it('Deve validar acesso para maior de 18 e ingresso válido', () => {
        expect(acessoEvento.podeAcessarEvento(18, true)).toBe('Acesso liberado');
    });

    //maior de idade: false, ingresso válido: true
    it('Deve validar acesso para maior de 17 e ingresso válido', () => {
        expect(acessoEvento.podeAcessarEvento(17, true)).toBe('Acesso negado');
    });

    //maior de idade: true, ingresso válido: false
    it('Deve validar acesso para maior de 18 e ingresso inválido', () => {
        expect(acessoEvento.podeAcessarEvento(18, false)).toBe('Acesso negado');
    });
    
    //maior de idade: false, ingresso válido: false
    it('Deve validar acesso para maior de 17 e ingresso inválido', () => {
        expect(acessoEvento.podeAcessarEvento(17, false)).toBe('Acesso negado');
    });
    
});