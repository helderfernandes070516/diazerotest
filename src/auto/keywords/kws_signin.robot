*** Settings ***
Documentation    Keywords referentes aos cenários de Login

Resource         ../../config/package.robot

*** Keywords ***
Dado que o usuário esteja na tela de Login do Victor Hugo
    Wait Until Element Is Visible       ${SIGNIN.username_input}
    Wait Until Element Is Visible       ${SIGNIN.username_password}

Quando inserir o login e senha cadastrados e clicar em Entrar
    Input Text        ${SIGNIN.username_input}        ${AUTH.EMAIL}
    Input Text        ${SIGNIN.username_password}     ${AUTH.PASSWORD}
    Click Element     ${SIGNIN.submit_login_btn}                     

Então deve ser direcionado para a tela de minha conta
    Wait Until Element Is Visible    ${SIGNIN.submit_logout_btn}

E a mensagem "${MESSAGE1}", "${MESSAGE2}" deve ser apresentada
    Wait Until Page Contains    ${MESSAGE1}
    Wait Until Page Contains    ${MESSAGE2}

Quando inserir o login "${EMAIL}" e senha "${PASSWORD}" e clicar em Entrar
    Input Text        ${SIGNIN.username_input}        ${EMAIL}
    Input Text        ${SIGNIN.username_password}     ${PASSWORD}
    Click Element     ${SIGNIN.submit_login_btn}  

Então deve ser apresentada a mensagem "${ERROR_MESSAGE}"
    Wait Until Page Contains    ${ERROR_MESSAGE}
    