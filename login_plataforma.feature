Feature: Visualizar pedidos
Como Cliente da Ebac shop
fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Background: Dado que eu acesse a página de login da Ebac-Shop

    Scenario: Autenticação Válida
        When eu digitar o usuário "luz@bol.com"
        And senha "1234"
        Then deve ser direcionado para tela de checkout

    Scenario: Dados Inválidos
        When eu digitar o usuário "78@is.com"
        And senha "1234"
        Then deve exibir mensagem " usuário inexistente"

    Scenario: Dados inválidos
        When eu digitar o usuário "luz@bol.com"
        And senha "oiu767"
        Then deve exibir a mensagem "Usuário ou senha inexistentes"

@Esquema_Cenario
    Scenario Outline: Autenticar multiplos usuários
        When  eu digitar  <usuario>
        And   digitar    <senha>
        Then  deve exibir  <mensagem> de sucesso

    Exemplos:
    | usuario              | senha       |  mensagem      |
    |"luz@bol.com"         | "1234"      | "Olá Luz!"     |
    |"maria@ig.com.br"     | "tdez65"    | "Olá Maria!"   |
    |"fulano@aol.com"      | "teste@677" | "Olá Fulano!"  |

