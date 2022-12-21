            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu configure meu produto de acordo com meu tamanho, cor e quantidade

            Cenário: Selecionado cor, tamanho e quantidade
            Quando eu selecionar a cor, tamanho e quantidade
            Então inserir no carrinho, a mensagem "produto adicionado com sucesso", deve ser monstrada

            Esquema do Cenário: Paramentros icorretos para adiconar produtos ao carrinho
            Quando eu selecionar <cor>, <tamanho> e <quantidade>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | cor   | tamanho   | quantidade   | mensagem                    |
            | "cor" | "tamanho" |              | "Favor informar quantidade" |
            | "cor" |           | "quantidade" | "Favor informar tamanho"    |
            |       | "tamanho" | "quantidade  | "Favor informar a cor"      |


Contexto:
Dado que eu selecione a quantidade de itens e adicone ao carrinho

Cenario: Quantidade valida de produtos
Dado que eu configure meu produto
E adicione a quantidade de 10 itens
Então o produto é adiconado ao carrinho

Cenario: Quantidade invalida de produtos
Dado que eu configure meu produto 
E adicone a quantidade de 11 itens
Então a mensagem "Quantidade máxima de 10 itens por venda, favor verificar no carrinho" deve ser monstrada

Cenário: 
Dado que eu click no botão limpar

Cenário: Cor, quantidade e tamanho selecionados
Dado que eu selecione a cor, tamanho e quantidade
E click no botão limpar
Então todas as opções selecionadas devem voltar ao estado inicial






