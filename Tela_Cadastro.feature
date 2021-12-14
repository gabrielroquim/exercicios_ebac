Feature: Tela de Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

@Cenário_Usando_Contexo

    Background: Dado que acesse a página CHECKOUT da Ebac-shop

        Scenario: Todos os campos com asterisco com preenchimento válidos
            When eu digitar o nome "Gerânio"
            And digitar sobrenome "Pendente"
            And escolher o país 
            And digitar o endereço "Rua das Flores, 34"
            And digitar a cidade " Holambra"
            And digitar o cep "03241-020"
            And digitar o número de telefone "2145 95821"
            And digitar endereço de e-mail "geraniopendente@cacto.com.br"
            Then deve ser direcionado para tela de pedido recebido

        Scenario: Campo nome não preenchido
            When eu deixar o campo nome em branco
            And digitar sobrenome "Pendente"
            And escolher o país 
            And digitar o endereço "Rua das Flores, 34"
            And digitar a cidade " Holambra"
            And digitar o cep "03241-020"
            And digitar o número de telefone "2145 95821"
            And digitar endereço de e-mail "geraniopendente@cacto.com.br"
            Then deve exisbir a mensagem " O campo nome é obrigatório"

        Scenario: Campo sobrenome não preenchido
            When eu digitar o nome "Gerânio"
            And eu deixar o campo sobrenome em branco
            And escolher o país 
            And digitar o endereço "Rua das Flores, 34"
            And digitar a cidade " Holambra"
            And digitar o cep "03241-020"
            And digitar o número de telefone "2145 95821"
            And digitar endereço de e-mail "geraniopendente@cacto.com.br"
            Then deve exisbir a mensagem " O campo sobrenome é obrigatório"


        Scenario: Campo país em branco
            When eu digitar o nome "Gerânio"
            And digitar sobrenome "Pendente"
            And deixar o campo páis em branco
            And digitar o endereço "Rua das Flores, 34"
            And digitar a cidade " Holambra"
            And digitar o cep "03241-020"
            And digitar o número de telefone "2145 95821"
            And digitar endereço de e-mail "geraniopendente@cacto.com.br"
            Then deve exisbir a mensagem " O campo país é obrigatório"

        Scenario: Campo endereço não preenchido
            When eu digitar o nome "Gerânio"
            And digitar sobrenome "Pendente"
            And escolher o país 
            And deixar o campo endereço em branco
            And digitar a cidade " Holambra"
            And digitar o cep "03241-020"
            And digitar o número de telefone "2145 95821"
            And digitar endereço de e-mail "geraniopendente@cacto.com.br"
            Then deve exisbir a mensagem " O campo endereço é obrigatório"

        Scenario: Campo cidade não preenchido
            When eu digitar o nome "Gerânio"
            And digitar sobrenome "Pendente"
            And escolher o país 
            And digitar o endereço "Rua das Flores, 34"
            And não preencher o campo cidade
            And digitar o cep "03241-020"
            And digitar o número de telefone "2145 95821"
            And digitar endereço de e-mail "geraniopendente@cacto.com.br"
            Then deve exisbir a mensagem " O campo cidade é obrigatório"

        Scenario: Campo CEP não preenchido
            When eu digitar o nome "Gerânio"
            And digitar sobrenome "Pendente"
            And escolher o país 
            And digitar o endereço "Rua das Flores, 34"
            And digitar a cidade " Holambra"
            And não preencher o campo CEP
            And digitar o número de telefone "2145 95821"
            And digitar endereço de e-mail "geraniopendente@cacto.com.br"
            Then deve exisbir a mensagem " O campo CEP é obrigatório"

        Scenario: Campo telefone não preenchido
            When eu digitar o nome "Gerânio"
            And digitar sobrenome "Pendente"
            And escolher o país 
            And digitar o endereço "Rua das Flores, 34"
            And digitar a cidade " Holambra"
            And digitar o cep "03241-020"
            And não preencher o campo telefone 
            And digitar endereço de e-mail "geraniopendente@cacto.com.br"
            Then deve exisbir a mensagem " O campo telefone é obrigatório"

        Scenario: Campo Email não preenchido
            When eu digitar o nome "Gerânio"
            And digitar sobrenome "Pendente"
            And escolher o país 
            And digitar o endereço "Rua das Flores, 34"
            And digitar a cidade " Holambra"
            And digitar o cep "03241-020"
            And digitar o número de telefone "2145 95821"
            And não preencher campo E-mail
            Then deve exisbir a mensagem " O campo Email é obrigatório"

@Esquema_de_Cenário

    Background: Dado que acesse a página CHECKOUT da Ebac-shop

    Scenario Outline: Todos os campos com asterisco preenchimento obrigatórios
        When eu digitar o <nome>
            And digitar <sobrenome>
            And escolher o <pais> 
            And digitar o <endereco>
            And digitar a <cidade>
            And digitar o <cep> 
            And digitar o <numero_telefone> 
            And digitar endereço de <e-mail> 
            Then deve exibir a mensagem "Pedido recebido"
        But se algum campo estiver em branco 
            Then exibir mensagem " o campo <vazio> é obrigatório"

    Examples:
        | Nome       | Sobrebnome  | país    | Endereço              |Cidade          |CEP          | Telefone     |E-MAil                          | Mensagem                           |
        | "violeta"  | "azul "     | Brasil  | "Rua jabuti, 54"      | "São Joaquim"  |"04777-050"  | "9999 0321"  | "violeta@bol.com"              | "Pedido recebido"                  |
        |"gerânio"   | "pendente"  | Brasil  | "Rua das Flores,34"   | "Holambra"     |"04558-020"  | "3255-4000"  | "geraniopendente@cacto.com.br" | "Pedido recebido"                  |
        |"Kalanchoe" | "Laranja"   | Brasil  | "Beco rosa, 35"       | "Atiabaia"     |"03254-120"  | "98520 2011" |"kalanchoe@uoly.com.br"         | "Pedido recebido"                  |
        | "Rosa"     | "Vermelha"  | Brasil  | "Avenida da Arvore,89"| "Três-Corações"|"02500-080"  | "3252 00120" |"rosa@verde.com.br"             | "Pedido recebido"                  |
        |"      "    | "chip"      | Brasil  | "Rua Lasos,324"       | "Bertioga"     |"09000-080"  | "332522 122" |"rosa@puchou.com.br"            | "O campo nome é Obrigatório"       |
        |"Suculents" | "    "      | Brasil  | "Rua Lasos,324"       | "Bertioga"     |"09000-080"  | "332522 122" |"rosa@puchou.com.br"            | "O campo sobrenome é Obrigatório"  |
        |"Suculents" | "chip"      |         | "Rua Lasos,324"       | "Bertioga"     |"09000-080"  | "332522 122" |"rosa@puchou.com.br"            | "O campo país é Obrigatório"       |
        |"Suculents" | "chip"      | Brasil  | "             "       | "Bertioga"     |"09000-080"  | "332522 122" |"rosa@puchou.com.br"            | "O campo endereço é Obrigatório"   |
        |"Suculents" | "chip"      | Brasil  | "Rua Lasos,324"       | "        "     |"09000-080"  | "332522 122" |"rosa@puchou.com.br"            | "O campo cidade é Obrigatório"     |
        |"Suculents" | "chip"      | Brasil  | "Rua Lasos,324"       | "Bertioga"     |"         "  | "332522 122" |"rosa@puchou.com.br"            | "O campo CEP é Obrigatório"        |
        |"Suculents" | "chip"      | Brasil  | "Rua Lasos,324"       | "Bertioga"     |"09000-080"  | "          " |"rosa@puchou.com.br"            | "O campo Telefone é Obrigatório"   |
        |"Suculents" | "chip"      | Brasil  | "Rua Lasos,324"       | "Bertioga"     |"09000-080"  | "332522 122" |"                  "            | "O campo E-mail é Obrigatório"     |
        

    Background: Dado que acesse a página CHECKOUT da Ebac-shop

        Scenario Outline:Campo validação de E-mail
            When eu digitar  <nome>
                And digitar  <sobrenome>
                And escolher <pais> 
                And digitar  <endereco>
                And digitar  <cidade>
                And digitar  <cep> 
                And digitar  <numero_telefone> 
                And digitar endereço de <e-mail> 
                Then deve ser direcionado para página <pedidorecebido>
            But caso o campo <e-mail> estiver com dados inválidos
                Then exibir mensagem " E-mail inválido"

        Examples:
            | Nome       | Sobrenome      | País    | Endereço              | Cidade         | CEP         | Telefone     |  E-Mail               | Mensagem
            | "violeta"  | "azul "        | Brasil  | "Rua jabuti, 54"      | "São Joaquim"  |"04777-050"  | "9999 0321"  | "violeta@bol.com"     | "Pedido recebido" |    
            | "violeta"  | "azul "        | Brasil  | "Rua jabuti, 54"      | "São Joaquim"  |"04777-050"  | "9999 0321"  | "violeta@$$$$9.com"   | "E-mail inválido" |