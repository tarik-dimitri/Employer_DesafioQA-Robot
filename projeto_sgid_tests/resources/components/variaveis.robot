*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Variables ***
${NOME}                               Tarik Dimitri da Silva Feitosa
${DATA_NASCIMENTO}                    13/06/1991
${IMPRESSAO_DIGITAL}                  Impressão Digital fornecida
${FOTO_DE_PERFIL}                     Foto de Perfil fornecida
${IDIOMA}                             Inglês
${IDIOMA_VALOR}                       Inglês
${NIVEL_PRIVACIDADE}                  Padrão
${NIVEL_PRIVACIDADE_VALOR}            Padrão
${CONSENTIMENTO_COLETA_DADOS}         Aceito
${BOTAO_FINALIZAR_CADASTRO}           Finalizar Cadastro
${MENSAGEM_SUCESSO}                   Cadastro realizado com sucesso
${IMAGEM_TESTE}                       ${CURDIR}../../../assets/imagem.jpg
${URL_CADASTRO}                       https://desafio-equipe.vercel.app
${DATA_INVALIDA}                      30/02/1991
${MENSAGEM_ERRO_CAMPO_OBRIGATORIO}    Preencha este campo.
${MENSAGEM_ERRO_ACEITAR_TERMOS}       Marque esta caixa se deseja continuar.
${MENSAGEM_ERRO_DATA_INVALIDA}        Insira um valor válido. O campo está incompleto ou tem uma data inválida.