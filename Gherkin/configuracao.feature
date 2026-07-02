Funcionalidade: Configuração de produto para adicionar no carrinho
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que o usuário está na página de um produto selecionado

    Cenário: Adicionar produto configurado no carrinho
        Quando o usuário seleciona as opções desejadas (modelo, tamanho e quantidade)
        E depois adicionar o item no carrinho
        Então o produto configurado deve ser adicionado ao carrinho com sucesso

    Cenário: Número de produtos no carrinho acima do limite (10)
        Quando o usuário seleciona as opções desejadas (modelo, tamanho)
        E quantidade acima do limite permitido (10)
        E depois adicionar o item no carrinho
        Então o sistema deve exibir uma mensagem de erro informando que o limite máximo de produtos no carrinho foi atingido

    Cenário: Número de produtos no carrinho inválido (letras, 0 ou negativo)
        Quando o usuário seleciona as opções desejadas (modelo, tamanho)
        E caso a quantidade seja inválida (letras, 0 ou negativo)
        E depois adicionar o item no carrinho
        Então o sistema deve exibir uma mensagem de erro informando que o valor da quantidade é inválido e não permitir a adição do produto ao carrinho

    Cenário: O Produto não está totalmente configurado para adicionar no carrinho
        Quando o usuário seleciona apenas algumas opções
        E depois adicionar o item no carrinho
        Então o sistema deve notificar que há opções obrigatórias que não foram selecionadas e não permitir a adição do produto ao carrinho

    Cenário: O Produto não está disponível para compra
        Quando o usuário seleciona as opções desejadas (modelo, tamanho e quantidade)
        E depois adicionar o item no carrinho
        Então o sistema deve notificar que o produto não está disponível para compra e não permitir a adição do produto ao carrinho

    Cenário: Limpar as escolhas do produto configurado
        Quando o usuário seleciona as opções desejadas (modelo, tamanho e quantidade)
        E depois clicar no botão de limpar escolhas
        Então o sistema deve limpar todas as opções selecionadas e resetar a quantidade para o valor padrão (1)