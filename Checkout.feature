            #language: pt

            Funcionalidade: Tela de Checkout
            Como cliente Ebac-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de cadastro da Ebac-SHOP

            Cenário: Cadastro válido
            Quando eu cadastrar o nome "José", sobrenome "silva", pais "Brasil", endereço "rua jaca 10", cidade "Paranaguá", cep "11222555" e telefone "41-9999-4444"
            E colocar o e-mail "teste@ebac.com.br"
            Então sou autorizado a finalizar a compra

            Esquema do Cenário: Cadastro inválido
            Quando eu cadastrar o <nome>, <sobrenome>, <pais> , <endereco> , <cidade> , <cep> e <telefone>
            E colocar o <e-mail>
            Então uma <mensagem> de erro e exibida

            Exemplos:
            | nome   | sobrenome | pais     | endereco      | cidade      | cep        | telefone       | e-mail              | mensagem                                            |
            | "José" | "silva"   | "Brasil" | "rua jaca 10" | "Paranaguá" | "11222555" | "41-9999-4444" | "teste.ebac.com.br" | "E-mail com formato invalido, favor verificar"      |
            | "José" | "silva"   | "Brasil" | "rua jaca 10" |             | "11222555" | "41-9999-4444" | "teste.ebac.com.br" | "Campo obrigatorio não preenchido, favor verifciar" |
            | "José" |           | "Brasil" | "rua jaca 10" | "Paranaguá" | "11222555" | "41-9999-4444" | "teste.ebac.com.br" | "Campo obrigatorio não preenchido, favor verifciar" |
            |        |           |          |               |             |            |                |                     |                                                     | "Nenhum campo preenchido, favor cadsatre os campos com asterico para prosseguir" |
