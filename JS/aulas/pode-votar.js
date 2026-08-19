/*
Regras (exemplo prático inspirado na legislação brasileira)
- Só  pode votar se for brasileiro, tiver título e tiver pelo menos 16 anos.
- Votação obrigatória entre 18 e 70 anos (inclusive).
- Votação facultativa entre 16-17 anos e acima de 70 anos.
*/

function avaliarVotacao(idade, temTitulo, isBrasileiro) { 
    //Negado se algum requisito básico não estiver satisfeito
    if(!isBrasileiro || !temTitulo || idade < 16) return 'Negado';

    //Obrigaróio: 18 a 70
    if(idade >= 18 && idade <= 70) return 'Obrigatório';

    //Facultativo: 16-17 ou > 70
    return 'Facultativo';
}

module.exports = { avaliarVotacao }