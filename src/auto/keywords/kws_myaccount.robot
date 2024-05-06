*** Settings ***
Documentation    Keywords referentes ao cadastro de novos usuários

Resource         ../../config/package.robot
Library    ../../../.venv/Lib/site-packages/robot/libraries/XML.py

*** Keywords ***
Dado que o usuário tenha realizado login com sucesso
    Realizar login

E acessar a sessão de "Minhas informações"
    Click Element    ${MYACCOUNT.BTN_MYINFORMATIONS}

Quando realizar a edição dos campos e clicar em Salvar dados
    ${NEW_FAKER_NAME}           FakerLibrary.Name
    Click Element    id=rcc-confirm-button
    Clear Element Text          ${MY_INFORMATIONS.INPUT_NAME}
    Input Text                  ${MY_INFORMATIONS.INPUT_NAME}    ${NEW_FAKER_NAME} 
    Scroll Element Into View    ${MY_INFORMATIONS.BTN_SAVE}
    Click Element               ${MY_INFORMATIONS.BTN_SAVE}

Então a edição deve ser realizada com sucesso
    Wait Until Page Contains        Dados alterados com sucesso!
