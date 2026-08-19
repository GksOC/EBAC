function verificarIdade(idade){
    let mensagem = '';

    if(idade >= 18) {
        return 'Maior de idade';
    }
    return 'Menor de idade';
}

module.exports = { verificarIdade };