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

        # Os exemplos servem como biblioteca de dados para o Esquema do Cenário, permitindo a execução de múltiplos testes de login com diferentes 
        # combinações de e-mail e senha. 
        
        # "<numeros>" deve ser substituído por um valor exclusivamente numérico para validar o teste.

        # "senha_valida", "senha_invalida" e "senha_qualquer" são placeholders para validar os testes de login com diferentes combinações de senha.
        # contando que os campos, como indicam, respeitem as regras de validação do sistema.
        # por exemplo, "senha_valida" deve seguir as regras de negócio sobre as senhas e combinar com o registro do email no banco de dados.
        # "senha_invalida" deve ser qualquer coisa que não seja a mesma senha do registro do email no banco de dados.
        # "qualquer_senha" permite qualquer coisa como entrada, pois não fará diferença no resultado.

        # "email_valido", "email_invalido", "email_qualquer" e "email_incompleto", "dominio" e "teste" são placeholders que aceitam qualquer entrada,
        # os únicos caracteres especiais permitidos são: . (ponto), - (hífen), _ (underline), + (mais)
        # letras com acento são caracteres especiais e NÃO são permitidos, isso inclui o "ç".
            | email                             | senha          | resultado                                                                    |
            | email_valido@dominio              | senha_valida   | O sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout |
            | email_valido2.teste@dominio       | senha_valida   | O sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout |
            | email_valido3@dominio.teste       | senha_valida   | O sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout |
            | email_valido4@<numeros>.dominio   | senha_valida   | O sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout |
            | email_valido@dominio              | senha_invalida | O sistema deve emitir um aviso de que a senha está incorreta                 |
            | email_valido2.teste@dominio       | senha_invalida | O sistema deve emitir um aviso de que a senha está incorreta                 |
            | email_valido3@dominio.teste       | senha_invalida | O sistema deve emitir um aviso de que a senha está incorreta                 |
            | email_valido4@<numeros>.dominio   | senha_invalida | O sistema deve emitir um aviso de que a senha está incorreta                 |
            | email_qualquer@dominio            | senha_qualquer | O sistema deve emitir um aviso de que não existe este email cadastrado       |
            | email_qualquer2@dominio.teste     | senha_qualquer | O sistema deve emitir um aviso de que não existe este email cadastrado       |
            | email_qualquer3.teste@dominio     | senha_qualquer | O sistema deve emitir um aviso de que não existe este email cadastrado       |
            | email_qualquer4@<numeros>.dominio | senha_qualquer | O sistema deve emitir um aviso de que não existe este email cadastrado       |
            | email_incompleto                  | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | @dominio.teste                    | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_incompleto@<numeros>        | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_qualquer@dominio            |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_incompleto                  |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | @dominio.teste                    |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |        
            |                                   | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        | 
            |                                   |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |  

