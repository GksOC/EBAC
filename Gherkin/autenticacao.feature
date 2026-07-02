Funcionalidade: Autenticação do Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma  
    Para visualizar meus pedidos

    Contexto:
        Dado que o usuário está na página de login da plataforma

    Cenário: Login com sucesso
        Quando o usuário insere um e-mail válido
        E insere uma senha válida
        Então ao clicar no Login o sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout

    Cenário: Login com usuário não encontrado
        Quando o usuário insere um e-mail não existente no banco de dados
        E insere uma senha qualquer
        Então ao clicar no Login o sistema deve emitir um aviso de que o usuário não foi encontrado

    Cenário: Login com senha incorreta
        Quando o usuário insere um e-mail válido
        E insere uma senha incorreta
        Então ao clicar no Login o sistema deve emitir um aviso de que a senha está incorreta

    Cenário: Login com campos inválido 
        Quando o usuário insere um e-mail inválido (sem domínio)
        E insere uma senha inválida (menos de 6 caracteres)
        Então ao clicar no Login o sistema deve emitir um aviso de que os campos são inválidos

    Esquema do Cenário: Multiplos testes de login
        Quando o usuário insere um e-mail "<email>"
        E insere uma senha "<senha>"
        E clica para realizar o login
        Então "<resultado>"

        Exemplos:
            | email                  | senha          | resultado                                                                    |
            | email_valido@dominio   | senha_valida   | O sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout |
            | email_valido@dominio   | senha_invalida | O sistema deve emitir um aviso de que a senha está incorreta                 |
            | email_invalido@dominio | senha_qualquer | O sistema deve emitir um aviso de que não existe este email cadastrado       |
            | email_incompleto       | senha_qualquer | O sistema deve emitir um aviso de que os campos são inválidos                |