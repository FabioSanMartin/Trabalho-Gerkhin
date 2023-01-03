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
            | nome            | sobrenome       | pais            | endereco        | cidade          | cep             | telefone        | e-mail              | mensagem                                                                         |
            | "José"          | "silva"         | "Brasil"        | "rua jaca 10"   | "Paranaguá"     | "11222555"      | "41-9999-4444"  | "teste.ebac.com.br" | "E-mail com formato invalido, favor verificar"                                   |
            | "José"          | "silva"         | "Brasil"        | "rua jaca 10"   | "não informado" | "11222555"      | "41-9999-4444"  | "teste@ebac.com.br" | "Campo obrigatorio Cidade, não preenchido, favor verificar"                      |
            | "José"          | "não informado" | "Brasil"        | "rua jaca 10"   | "Paranaguá"     | "11222555"      | "41-9999-4444"  | "teste@ebac.com.br" | "Campo obrigatorio Sobrenome, não preenchido, favor verificar"                   |
            | "não informado" | "silva"         | "Brasil"        | "rua jaca 10"   | "Paranaguá"     | "11222555"      | "41-9999-4444"  | "teste@ebac.com.br" | "Campo obrigatorio Nome, não preenchido, favor verificar"                        |
            | "José"          | "silva"         | "Brasil"        | "rua jaca 10"   | "Paranaguá"     | "não informado" | "41-9999-4444"  | "teste@ebac.com.br" | "Campo obrigatorio CEP, não preenchido, favor verificar"                         |
            | "José"          | "silva"         | "Brasil"        | "não informado" | "Paranaguá"     | "11222555"      | "41-9999-4444"  | "teste@ebac.com.br" | "Campo obrigatorio Endereço, não preenchido, favor verificar"                    |
            | "José"          | "silva"         | "não informado" | "rua jaca 10"   | "Paranaguá"     | "11222555"      | "41-9999-4444"  | "teste@ebac.com.br" | "Campo obrigatorio Pais, não preenchido, favor verificar"                        |
            | "não informado" | "não informado" | "não informado" | "não informado" | "não informado" | "não informado" | "não informado" | "não informado"     | "Nenhum campo preenchido, favor cadastre os campos com asterico para prosseguir" |
            | "José"          | "silva"         | "Brasil"        | "rua jaca 10"   | "Paranaguá"     | "11222555"      | "não informado" | "teste@ebac.com.br" | "Campo obrigatorio Telefone, não preenchido, favor verificar"                    |
            | "José"          | "silva"         | "Brasil"        | "rua jaca 10"   | "Paranaguá"     | "11222555"      | "não informado" | "não informado"     | "Campo obrigatorio e-mail, não preenchido, favor verificar"                      |