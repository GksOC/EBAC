#language: pt

Funcionalidade: Tela de Login
Como aluno do portal EBAC
Quero me autenticar
Para visualizar minhas notas

# Cenário: Autenticação com sucesso
# Dado que eu acesse a página de autenticação do portal EBAC
# Quando eu digitar o usuário "guilherme@ebac.com.br"
# E a senha "senha@123"
# Então deve exibir uma mensagem de boas vindas "Olá Guilherme"

# Cenário: Usuário inexstinte
# Dado que eu acesse a página de autenticação do portal EBAC
# Quando eu digitar o usuário "teste.xyz@ebac.com.br"
# E a senha "senha@123"
# Então deve exibir uma mensagem de aviso "Usuário não encontrado"


# Para  otimizar e evitar reescrita, pode ser feita a seguinte organização:

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC

Cenário: Autenticação com sucesso
Quando eu digitar o usuário "guilherme@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Olá Guilherme"

Cenário: Usuário inexstinte
Quando eu digitar o usuário "teste.xyz@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de aviso "Usuário não encontrado"

Cenário: Usuário existente mas senha incorreta
Quando eu digitar o usuário "guilherme@ebac.com.br"
E a senha "senhas@1234"
Então deve exibir uma mensagem de aviso "Senha incorreta"

Cenário: Autenticação de múltiplos usuários
Quando eu digitar o usuário "<usuario>"
E a senha "<senha>"
Então deve exibir a "<mensagem>" de sucesso ou erro

Exemplos:
| usuario                     | senha        | mensagem                    |
| guilherme@ebac.com.br       | senha@123    | Olá Guilherme               |
| teste.xyz@ebac.com.br       | senha@123    | Usuário não encontrado      |
| guilherme@ebac.com.br       | senhas@1234  | Senha incorreta             |