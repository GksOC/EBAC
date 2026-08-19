let nome = "Fábio", idade = 45, profissao = "QA";
const nacionalidade = "Brasileiro";

console.log(nome);
console.log(idade);
console.log(profissao);
console.log(nacionalidade);

document.getElementById('variaveis').innerHTML = `
    Nome: ${nome} <br>
    Idade: ${idade} <br>
    Profissão: ${profissao} <br>
    Nacionalidade: ${nacionalidade} <br>
    Data: ${new Date().toLocaleDateString()} <br>
    Horário: ${new Date().toLocaleTimeString()} <br>
`;

/*
no caso eu já sei que a dirença entre os tipos "var", "let" e "const"
var tem escopo global, o uso inadequado pode ser problemático e difícil de corrigir
let te escopo local e deixa torna-se inacessível após sair do escopo onde foi declarada
const é o mesmo que o 'let' porém seu conteúdo não pode ser alterado (constante)
*/