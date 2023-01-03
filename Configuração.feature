            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho, gosto e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu configure meu produto de acordo com meu tamanho, cor e quantidade

            Cenário: Selecionado cor, tamanho e quantidade
            Quando eu selecionar a cor verde, tamanho 38 e a quantidade de 10 itens
            E inserir no carrinho
            Então a mensagem "produto adicionado com sucesso", deve ser monstrada

            Cenario: Quantidade valida de produtos
            Dado que eu configure meu produto
            E adicione a quantidade de 10 itens
            Então o produto é adiconado ao carrinho

            Cenário: Botão limpar
            Dado que eu tenha configurado meu produto
            E click no botão limpar
            Então todas as opções selecionadas devem voltar ao estado original

            Esquema do Cenário: Paramentros para adicionar produtos ao carrinho
            Quando eu selecionar <cor>, <tamanho> e <quantidade>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | cor             | tamanho         | quantidade      | mensagem                              |
            | "azul"          | "31"            | "não informado" | "Favor informar quantidade"           |
            | "amarelo"       | "não informado" | "10"            | "Favor informar tamanho"              |
            | "não informado" | "30"            | "10"            | "Favor informar a cor"                |
            | "verde"         | "45"            | "15"            | "quantidade maxima de itens excedida" |
            | "verde"         | "45"            | "10"            | "produto adicionado com sucesso"      |











