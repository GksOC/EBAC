# Configuração e organização de testes com Jest
Passo a passo [Getting Started · Jest](https://jestjs.io/docs/getting-started):
`npm install --save-dev jest`
Adicionar essa porção de código no `package.json`:
```JSON
  "scripts": {
    "test": "jest"
  }
```
Depois o comando para adicionar os snippets:
`npm install --save-dev @types/jest`

Para fazer os testes, precisaremos criar um arquivo \*.test.js
Dentro dele passar a referência do arquivo original com:
`const <nome> = require(<diretório>);`

A estrutura do teste é da seguinte forma:
```JavaScript
test('Deve somar 2 + 2 e o resultado deve ser o 4', () => {
    expect(calculadora.somar(2, 2)).toBe(4);
});
```

Com o script configurado no `package.json` podemos executar o código com `npm run test`
Para uma exibição de maior cobertura e detalhes: `npx jest --coverage`
**É recomendado que passe esse argumento "--coverage" no** `package.json`
# Técnicas de cobertura de código
```JavaScript
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
  
        expect(votacao.avaliarVotacao(15, true, true)).toBe('Negado');  // de menor
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
```

| Tipo de cobertura           | Definição                                                                                                                                                                                                                                                                     |
| --------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Cobertura de Instruções** | Mede a porcentagem de **instruções/comandos do código** que foram executados ao menos uma vez durante os testes. Ex.: se existem 100 instruções e os testes executam 80, a cobertura é de 80%.                                                                                |
| **Cobertura de Condições**  | Verifica se cada **condição lógica** dentro de expressões booleanas foi avaliada tanto como **verdadeira quanto falsa**. É útil para expressões como `if (idade >= 18 && possuiDocumento)`, pois testa os diferentes valores de cada condição.                                |
| **Cobertura de Decisões**   | Mede se cada **decisão do programa** teve seus possíveis resultados exercitados. Em um `if`, por exemplo, os testes devem fazer o fluxo passar tanto pelo **`true` quanto pelo `false`**.                                                                                     |
| **Cobertura de Caminhos**   | Verifica quais **caminhos possíveis de execução** pelo código foram percorridos. Considera diferentes combinações de decisões e fluxos. É a cobertura mais abrangente, mas também pode ser muito mais difícil de atingir, pois o número de caminhos pode crescer rapidamente. |