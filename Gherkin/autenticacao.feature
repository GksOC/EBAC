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

        # "senha_valida", "senha_invalida" e "senha_qualquer" são placeholders para validar os testes de login com diferentes combinações de senha.
        # contando que os campos, como indicam, respeitem as regras de validação do sistema.
        # por exemplo, "senha_valida" deve seguir as regras de negócio sobre as senhas e combinar com o registro do email no banco de dados.
        # "senha_invalida" deve ser qualquer coisa que não seja a mesma senha do registro do email no banco de dados.
        # "qualquer_senha" permite qualquer coisa como entrada, pois não fará diferença no resultado.

        # "email_valido", "email_qualquer", "sufx" e "dom" são placeholders que aceitam qualquer entrada, PORÉM
        # os únicos caracteres especiais permitidos são: . (ponto), - (hífen), _ (underline), + (mais)
        # letras com acento são caracteres especiais e NÃO são permitidos, isso inclui o "ç".

        # "email_valido" deve ser um e-mail que já esteja registrado no banco de dados, respeitando as regras de negócio sobre os e-mails.
        # "email_qualquer" deve ser um e-mail que não esteja registrado no banco de dados, respeitando as regras de negócio sobre os e-mails.
        # "email_invalido" deve conter caracteres especiais que não são permitidos.

        # "dom" e "sufx" NÃO aceitam números.
        # "dom" sozinho pode ser substituído por "sufx".

        # "numeros" deve ser substituído por um valor exclusivamente numérico para validar o teste.
            | email                         | senha          | resultado                                                                    |
            | email_valido@dom              | senha_valida   | O sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout |
            | email_valido@dom.sufx         | senha_valida   | O sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout |
            | email_valido@numeros.dom      | senha_valida   | O sistema deve autenticar o usuário e redirecioná-lo para a tela de checkout |
            | email_valido@dom              | senha_invalida | O sistema deve emitir um aviso de que a senha está incorreta                 |
            | email_valido@dom.sufx         | senha_invalida | O sistema deve emitir um aviso de que a senha está incorreta                 |
            | email_valido@numeros.dom      | senha_invalida | O sistema deve emitir um aviso de que a senha está incorreta                 |
            | email_qualquer@dom            | senha_qualquer | O sistema deve emitir um aviso de que não existe este email cadastrado       |
            | email_qualquer@dom.sufx       | senha_qualquer | O sistema deve emitir um aviso de que não existe este email cadastrado       |
            | email_qualquer@numeros.dom    | senha_qualquer | O sistema deve emitir um aviso de que não existe este email cadastrado       |
            | email_invalido@dom            | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_invalido@dom.sufx       | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_invalido@numeros.dom    | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_qualquer                | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | @dom                          | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | @dom.sufx                     | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_qualquer@numeros        | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_qualquer@dom.numeros    | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_qualquer@dom            |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | email_qualquer                |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | @dom                          |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            | @dom.sufx                     |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            |                               | senha_qualquer | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |
            |                               |                | O sistema deve emitir um aviso de que alguns dos campos são inválidos        |

