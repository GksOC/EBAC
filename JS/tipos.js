const texto = "Olá", numero = 10, booleano = true; // 0 ou 1 também valem
const array = ["azul", "amarelo", "branco"], objeto = {nome: 'Fábio', cidade: 'Ipatinga'};
let valorIndefinido
let valorNulo = null;

document.getElementById('tipos').innerHTML = `
    Texto: ${texto} <br>
    Número: ${numero} <br>
    Boolean: ${booleano} <br>
    Array: ${array} <br>
    Objeto: ${objeto.nome + ', ' + objeto.cidade} <br>
`;

console.log(typeof texto);
console.log(typeof numero);
console.log(typeof booleano);
console.log(typeof array);
console.log(typeof objeto);
console.log(typeof valorIndefinido);
console.log(typeof valorNulo);