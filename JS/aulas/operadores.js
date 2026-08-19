let num = 3781263;
let isEven;

if (num%2 === 0){
    console.log("Número par");
    isEven = "PAR"
}else{
    console.log("Número impar");
    isEven = "IMPAR"
}

let salario = 1500

document.getElementById('operadores').innerHTML = `
    O número ${num} é: ${isEven} <br><br>
    O salário vale: ${salario} <br>
    O dobro é: ${salario * 2} <br>
    A metade é: ${salario / 2} <br>
    O salário com bônus de 10%: ${ (salario * 1.1).toFixed(2) } <br>
`;