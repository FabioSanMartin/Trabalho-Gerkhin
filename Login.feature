            #language: pt

            Funcionalidade: Tela de Login
            Como Cliente da Ebac-SHOP
            Quero fazer o login(autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu insira meus dados de login no portal

            Cenário: Autenticação válida
            Dado que eu insira o login "teste@ebac.com.br"
            E a senha "teste123"
            Então sou direcionado a tela de checkout

            Esquema do Cenario: Autenticação inválida
            Quando eu inserir o <login>
            E a <senha>
            Então a <mensagem> deve ser exibida

            Exemplos:
            | login               | senha      | mensagem                     |
            | "teste@ebac.com.br" | "1234"     | “Usuário ou senha inválidos” |
            | "teste@uol.com.br"  | "teste123" | “Usuário ou senha inválidos” |