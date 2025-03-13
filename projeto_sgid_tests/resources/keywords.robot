Language: ptBR
*** Settings ***
Resource    components/elementos.robot
Resource    components/variaveis.robot
Library     SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
que eu acesso a tela de cadastro
    Open Browser    ${URL_CADASTRO}    chrome
    Maximize Browser Window
    Set Selenium Speed    0.5s

eu preencho os campos obrigatórios
    Wait Until Element Is Visible    ${CAMPO_NOME}    timeout=5s
    Input Text    ${CAMPO_NOME}    ${NOME}
    Input Text    ${CAMPO_DATA_NASCIMENTO}    ${DATA_NASCIMENTO}
    Wait Until Element Is Visible    ${CAMPO_IMPRESSAO_DIGITAL}    timeout=5s
    Click Element    ${CAMPO_IMPRESSAO_DIGITAL}
    Input Text    ${CAMPO_PREFERENCIAS}    Teste de automação
    Scroll Element Into View    ${CAMPO_FOTO}
    Sleep    2s
    Fazer upload da foto de perfil
    Scroll Element Into View    ${CAMPO_IDIOMA}
    Select From List By Label    ${CAMPO_IDIOMA}    ${IDIOMA_VALOR}
    Select From List By Label    ${CAMPO_PRIVACIDADE}    ${NIVEL_PRIVACIDADE_VALOR}
eu aceito os termos obrigatórios
    Scroll Element Into View    ${CHECKBOX_CONSENTIMENTO}
    Execute JavaScript    document.getElementById("consentimento").click()

não preencho o campo nome
    Wait Until Element Is Visible    ${CAMPO_NOME}    timeout=5s
    Input Text    ${CAMPO_NOME}    ${EMPTY}

eu altero a data de nascimento para inválida
    Scroll Element Into View    ${CAMPO_DATA_NASCIMENTO}
    Wait Until Element Is Visible    ${CAMPO_DATA_NASCIMENTO}    timeout=5s
    Clear Element Text    ${CAMPO_DATA_NASCIMENTO}
    Input Text    ${CAMPO_DATA_NASCIMENTO}    30/02/1999

eu preencho os campos obrigatórios com data inválida
    Wait Until Element Is Visible    ${CAMPO_NOME}    timeout=5s
    Input Text    ${CAMPO_NOME}    ${NOME}
    Wait Until Element Is Visible    ${CAMPO_DATA_NASCIMENTO}    timeout=5s
    Input Text    ${CAMPO_DATA_NASCIMENTO}    30/02/1999

eu finalizo o cadastro
    Scroll Element Into View    ${BOTAO_CADASTRO}
    Wait Until Element Is Visible    ${BOTAO_CADASTRO}    timeout=5s
    Click Element    ${BOTAO_CADASTRO}

vejo a mensagem de sucesso
    Wait Until Element Is Visible    ${MENSAGEM_SUCESSO}    timeout=5s
    Element Should Contain    ${MENSAGEM_SUCESSO}    ${MENSAGEM_SUCESSO}

o cadastro é finalizado com sucesso
    Wait Until Location Is    https://desafio-equipe.vercel.app/#    timeout=10s

vejo a mensagem de erro     [Arguments]       ${mensagem_esperada}
    ${mensagem_real}    Execute Javascript    return document.activeElement.validationMessage
    Log To Console    "Mensagem capturada: ${mensagem_real}"
    Should Be Equal As Strings    ${mensagem_real.strip()}    ${mensagem_esperada.strip()}


Fechar o navegador
    Close Browser

Fazer upload da foto de perfil
    ${caminho_absoluto}    Normalize Path    ${IMAGEM_TESTE}
    Wait Until Element Is Visible    id=fotoPerfil    timeout=3s
    Execute JavaScript    document.getElementById('fotoPerfil').style.display='block'
    Scroll Element Into View    id=fotoPerfil
    Choose File    id=fotoPerfil    ${caminho_absoluto}
