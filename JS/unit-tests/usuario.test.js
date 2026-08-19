const user = require('../Desafio/usuario.js');

const usuario = {
    nome: "Carlos",
    idade: 20,
    email: "carlos@email.com",
    ativo: true
}, usuarioInvalido = {
    nome: "Ana",
    idade: 16,
    email: "anaemail.com",
    ativo: false
}

describe('Testes de cobertura para Usuário', () => {
    
    test('Verificar se usuário é maior de idade', () => {
        expect(user.verificarMaiorIdade(18)).toBe(true);
    });

    test('Verificar se usuário é menor de idade', () => {
        expect(user.verificarMaiorIdade(17)).toBe(false);
    });


    test('Verificar se email é válido', () => {
        expect(user.validarEmail('teste@email.com')).toBe(true);
    });

    test('Verificar se email é inválido', () => {
        expect(user.validarEmail('teste.email.com')).toBe(false);
    });


    test('Verificar se usuário está ativo', () => {
        expect(user.usuarioAtivo(usuario)).toBe(true);
    });

    test('Verificar se usuário está inativo', () => {
        expect(user.usuarioAtivo(usuarioInvalido)).toBe(false);
    });

});

describe('Teste de Cobertura de caminhos para validar combinações de cadastro', () => {

    test('VALIDAR: Maior de idade, email válido, usuário ativo ', () => {
        expect(user.validarCadastro(usuario)).toBe(true);
    });

    test('INVALIDAR: Maior de idade, email válido, usuário inativo', () => {
        let tempUser = usuario;
        tempUser.ativo = usuarioInvalido.ativo;
        expect(user.validarCadastro(tempUser)).toBe(false);
    });

    test('INVALIDAR: Maior de idade, email inválido, usuário ativo', () => {
        let tempUser = usuario;
        tempUser.email = usuarioInvalido.email;
        expect(user.validarCadastro(tempUser)).toBe(false);
    });

    test('INVALIDAR: Menor de idade, email válido, usuário ativo', () => {
        let tempUser = usuario;
        tempUser.idade = usuarioInvalido.idade;
        expect(user.validarCadastro(tempUser)).toBe(false);
    });

    test('INVALIDAR: Menor de idade, email válido, usuário inativo', () => {
        let tempUser = usuario;
        tempUser.idade = usuarioInvalido.idade;
        tempUser.ativo = usuarioInvalido.ativo;
        expect(user.validarCadastro(tempUser)).toBe(false);
    });

    test('INVALIDAR: Menor de idade, email inválido, usuário ativo', () => {
        let tempUser = usuario;
        tempUser.idade = usuarioInvalido.idade;
        tempUser.email = usuarioInvalido.email;
        expect(user.validarCadastro(tempUser)).toBe(false);
    });

    test('INVALIDAR: Menor de idade, email inválido, usuário inativo', () => {
        expect(user.validarCadastro(usuarioInvalido)).toBe(false);
    });

});