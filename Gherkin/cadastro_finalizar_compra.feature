Funcionalidade: Cadastro de usuário na plataforma para finalização de compra
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro   
    Para finalizar minha compra

    # O campo "Páis" aparece duas vezes (uma obrigatório e outro opcional) e é ambíguo ao que se refere (se é o país da empresa ou do usuário)
    # Verificar com a quipe de QA sobre como tratar este campo.

    # Tambem foi identificado que não há campo de "Senha", portanto o Login deve ser autenticado via e-mail.
    # Verificar com a equipe de QA sobre os pre requisitos de cadastro para finalizar compra

    # Confirmar com a equipe de QA se os demais campos como País, Endereço, Cidade, CEP e Telefone também precisam ser validados
    # ou se qualquer valor é aceito para estes campos, pois não há regras de validação para eles.

    Contexto:
        Dado que o usuário está na página de finalização de compra sem ter realizado login e escolhido a opção de cadastro

    Cenário: Cadastro com sucesso
        Quando o usuário insere todos os campos obrigatórios corretamente (Nome, Sobrenome, País, Endereço, Cidade, CEP, Telefone e E-mail)
        Então ao clicar no botão de cadastro o sistema deve criar a conta do usuário, confirmar, autenticar e finalizar a compra

    Cenário: Cadastro com e-mail já existente
        Quando o usuário insere todos os campos obrigatórios corretamente (Nome, Sobrenome, País, Endereço, Cidade, CEP e Telefone)
        E caso insirir um email já existente no banco de dados
        Então ao clicar no botão de cadastro o sistema deve emitir um aviso de que o e-mail já está cadastrado e impedir a finalização da compra

    Cenário: Cadastro com e-mail já existente
        Quando o usuário insere todos os campos obrigatórios corretamente (Nome, Sobrenome, País, Endereço, Cidade, CEP e Telefone)
        E caso insirir um email já inválido (sem domínio) 
        Então ao clicar no botão de cadastro o sistema deve emitir um aviso de que o e-mail é inválido e impedir a finalização da compra

    Cenário: Cadastro com campos obrigatorios em branco
        Quando o usuário não insere todos os campos obrigatórios marcados com asterisco (*)
        Então ao clicar no botão de cadastro o sistema deve emitir um aviso para preencher os campos obrigatórios e impedir a finalização da compra
