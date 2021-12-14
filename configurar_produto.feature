#language:pt

Funcionalidade: Configurar Produto
Como Cliente da Ebac shop
Quero escolher os modelos de roupas
E quantidades
Para inserir no carrinho
@cenarioContexto

    Contexto: Dado que eu acesse o ebac shop página de Produtos

        Cenário: Seleções de cor, tamanho e quantidade obrigatórios 
            Quando eu escolher a cor 
            E tamanho
            E quantidade
            Então deve inserir o produto no carrinho

        Cenário: Cor não selecionada
            Quando eu não escolher a cor
            E escolher tamanho
            E escolher quantidade
            Então deve exibir mensagem de alerta " Cor não selecionada."

        Cenário: Quantidade não selecionada
            Quando eu não escolher a quantidade
            E escolher a cor
            E escolher o tamanho
            Então deve exibir mensagem de alerta " Quantidade não selecionada."

        Cenário: Tamanho não selecionado
            Quando eu não escolher o tamanho
            E escolher a cor
            E escolher a quantidade
            Então deve exibir mensagem de alerta " Tamanho não selecionado."


        Cenário: Produtos escolhidos mais que 10 por venda
            Quando eu escolher a cor
            E tamanho
            E quantidade maior que 10
            Então deve exibir mensagem de alerta "Quantidade acima do limite"

        Cenário: Até 10 produtos por venda
            Quando eu escolher a Cor
            E tamanho
            E quantidade até 10
            Então adiciona os produtos no carrinho


        Cenário: Botão limpar volta ao estado original dos produtos
            Quando eu escolher a cor
            E tamanho
            E quantidade
            E clicar no botão limpar
            Então o produto deve voltar as caraterisitcas originas

@EsquemaCenário
Dado que acesse a página da Ebac-shop produtos

Esquema do Cenário: Escolha de múltiplos produtos
    Quando eu escolher <cor>
    E <tamanho>
    E <quantidade> por venda até 10
    Então deve adicionar ao carrinho e exibir a <mensagem> de sucesso
    Mas caso a <quantidade> for >10 
    Então exibir a <mensagem2>


    Exemplos:
    | Cor             | tamanho       |  quantidade       |Qtd de produtos por venda dísponível |  mensagem                            | Mensagem2                    |
    | orange          | XS            |     1             |          "10"                       | "produto adicionado no carrinho."    |                              |
    | orange          | S             |     1             |          "9"                        | "produto adicionado no carrinho."    |                              | 
    | orange          | M             |     1             |          "8"                        | "produto adicionado no carrinho."    |                              |
    | orange          | L             |     1             |          "7"                        | "produto adicionado no carrinho."    |                              |
    | orange          | XL            |     1             |          "6"                        | "produto adicionado no carrinho."    |                              |
    | orange          | XL            |     7             |          "5"                        |                ""                    | "Quantidade acima do limite" | 

