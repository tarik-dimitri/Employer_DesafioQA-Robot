Language: ptBR
*** Settings ***
Resource    ../resources/keywords.robot
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 01: Erro ao tentar cadastrar sem preencher os campos
    [Tags]    cadastro_erro_sem_campos
        Dado que eu acesso a tela de cadastro
        E não preencho o campo nome
        Quando eu finalizo o cadastro
        Então vejo a mensagem de erro    Preencha este campo.

Caso de teste 02: Erro ao tentar cadastrar sem aceitar os termos
    [Tags]    cadastro_erro_sem_aceite
        Dado que eu acesso a tela de cadastro
        Quando eu preencho os campos obrigatórios
        E eu finalizo o cadastro
        Então vejo a mensagem de erro    Marque esta caixa se deseja continuar.

Caso de teste 03: Erro ao inserir data inválida
    [Tags]    cadastro_erro_data_invalida
        Dado que eu acesso a tela de cadastro
        Quando eu preencho os campos obrigatórios com data inválida
        E eu finalizo o cadastro
        Então vejo a mensagem de erro    Insira um valor válido. O campo está incompleto ou tem uma data inválida.
