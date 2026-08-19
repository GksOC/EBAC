function podeAcessarEvento(idade, ingressoValido){
    if(idade >= 18 && ingressoValido) {
        return 'Acesso liberado';
    }
    return 'Acesso negado';
}

module.exports = { podeAcessarEvento }