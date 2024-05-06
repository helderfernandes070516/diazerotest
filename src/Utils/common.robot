*** Settings ***
Documentation    Keywords Comuns para uso em geral

Resource         ../config/package.robot

*** Keywords ***
Realizar login
    Dado que o usuário esteja na tela de Login do Victor Hugo
    Quando inserir o login e senha cadastrados e clicar em Entrar
    Então deve ser direcionado para a tela de minha conta
    E a mensagem "Olá", "Helder Fernandes" deve ser apresentada

Preencher Campos Cadastro
    ${FAKER_NAME}     FakerLibrary.Name
    ${FAKER_CPF}      FakerLibrary.CPF
    ${FAKER_EMAIL}    FakerLibrary.Free Email
     
    Input Text       ${SIGNUP.INPUT_NAME}             ${FAKER_NAME}  
    Input Text       ${SIGNUP.INPUT_DOCUMENT}         ${FAKER_CPF}
    Input Text       ${SIGNUP.INPUT_BIRTHDAY}         "12041994"
    Input Text       ${SIGNUP.INPUT_PHONE}            "11959966455"
    Input Text       ${SIGNUP.INPUT_EMAIL}            ${FAKER_EMAIL} 
    Input Text       ${SIGNUP.INPUT_PASSWORD}         "Test@2024"
    Input Text       ${SIGNUP.INPUT_PASSWORD_VERIFY}  "Test@2024"


