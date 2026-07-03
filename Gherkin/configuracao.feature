Funcionalidade: Configuração de produto para adicionar no carrinho
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que o usuário está na página de um produto selecionado

    Cenário: Adicionar produto configurado no carrinho
        Quando o usuário seleciona as opções desejadas (modelo, tamanho e quantidade)
        E o usuário clica em Adicionar ao carrinho
        Então o produto configurado deve ser adicionado ao carrinho com sucesso

    Cenário: Número de produtos no carrinho acima do limite ( > 10)
        Quando o usuário seleciona as opções desejadas (modelo, tamanho)
        E o usuário seleciona uma quantidade acima do limite permitido ( > 10)
        E o usuário clica em Adicionar ao carrinho
        Então o sistema deve exibir uma mensagem de erro informando que o limite máximo de produtos no carrinho foi atingido

    # é importante verificar isso, pois caracteres podem ser identificados como inteiros dependendo da aquitetura do sistema
    Cenário: Número de produtos no carrinho inválido (letras, 0 ou negativo)
        Quando o usuário seleciona as opções desejadas (modelo, tamanho)
        E caso o usuário insira uma valor de quantidade que seja inválido (letras, 0 ou negativo)
        E o usuário clica em Adicionar ao carrinho
        Então o sistema deve exibir uma mensagem de erro informando que o valor da quantidade é inválido e não permitir a adição do produto ao carrinho

    Cenário: O Produto não está totalmente configurado para adicionar no carrinho
        Quando o usuário seleciona apenas algumas opções
        E o usuário clica em Adicionar ao carrinho
        Então o sistema deve notificar que há opções obrigatórias que não foram selecionadas e não permitir a adição do produto ao carrinho

    Cenário: O usuário seleciona um produto que não está disponível no estoque
        Quando o usuário seleciona o produto desejado (modelo, tamanho e quantidade)
        Então o sistema deve deixar o botão de Adicionar ao carrinho desabilitado e exibir uma mensagem informando que o produto não está disponível no estoque

    Cenário: O Produto estava inicialmente disponível, mas não no momento da compra
        Quando o usuário seleciona as opções desejadas (modelo, tamanho e quantidade)
        E o usuário clica em Adicionar ao carrinho
        Então o sistema deve notificar que o produto não está disponível/fora do estoque para compra e não permitir a adição do produto ao carrinho
              o sistema deve atualizar a página do produto para refletir a indisponibilidade do produto

    Cenário: Limpar as escolhas do produto configurado
        Quando o usuário seleciona as opções desejadas (modelo, tamanho e quantidade)
        E o usuário clica em Adicionar ao carrinho
        Então o sistema deve limpar todas as opções selecionadas e resetar a quantidade para o valor padrão (1)

