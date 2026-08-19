const votacao = require('../aulas/pode-votar.js');

describe('Teste de cobertura de decisões - Pode votar', () => {
    
    test('Deve permitir votar com maior de 18 até 70 anos, tem título e é brasileiro', () => {
        expect(votacao.avaliarVotacao(18, true, true)).toBe('Obrigatório');
        expect(votacao.avaliarVotacao(70, true, true)).toBe('Obrigatório');
    });

    test('Deve negar votar com maior de 15 ou sem título ou não é brasileiro', () => {
        expect(votacao.avaliarVotacao(18, false, true)).toBe('Negado'); //falta documento ou não brasileiro
        expect(votacao.avaliarVotacao(70, true, false)).toBe('Negado');
        expect(votacao.avaliarVotacao(16, false, false)).toBe('Negado');
        expect(votacao.avaliarVotacao(17, false, true)).toBe('Negado');
        expect(votacao.avaliarVotacao(71, true, false)).toBe('Negado');
        expect(votacao.avaliarVotacao(71, false, true)).toBe('Negado');

        expect(votacao.avaliarVotacao(15, true, true)).toBe('Negado');  // de menor
        expect(votacao.avaliarVotacao(14, false, true)).toBe('Negado'); 
        expect(votacao.avaliarVotacao(13, true, false)).toBe('Negado'); 
        expect(votacao.avaliarVotacao(12, false, false)).toBe('Negado');

    });

    test('Deve permitir o voto facultativo com maior entre 16 a 17 ou aciama de 70, tem título e é brasileiro', () => {
        expect(votacao.avaliarVotacao(16, true, true)).toBe('Facultativo');
        expect(votacao.avaliarVotacao(17, true, true)).toBe('Facultativo');
        expect(votacao.avaliarVotacao(71, true, true)).toBe('Facultativo');
    });
    
});

