#language: pt

Funcionalidade: Calculadora
    Como não sei fazer conta de cabeça
    Quero usar uma calculadora do sistema
    Para somar dois números

    Cenário: Soma de 2 números
        Dado que eu acesse a calculadora
        Quando eu somar 2 + 2
        Então o resultado deve ser 4

    Esquema do Cenário: Soma de 2 números
        Dado que eu acesse a calculadora
        Quando eu somar <numero1> + <numero2>
        Então o resultado deve ser <resultado>

        Exemplos:
            | numero1 | numero2 | resultado |
            | 2       | 2       | 4         |
            | 3       | 5       | 8         |
            | 10      | 15      | 25        |