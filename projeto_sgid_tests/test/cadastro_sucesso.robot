Language: ptBR
*** Settings ***
Resource    ../resources/keywords.robot
Test Teardown    Fechar o navegador

*** Test Cases ***
Cadastro realizado com sucesso
    [Tags]    cadastro_sucesso
        Dado que eu acesso a tela de cadastro
        Quando eu preencho os campos obrigatórios
        E eu aceito os termos obrigatórios
        E eu finalizo o cadastro
        Então o cadastro é finalizado com sucesso