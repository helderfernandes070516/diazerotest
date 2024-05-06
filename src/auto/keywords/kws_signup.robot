*** Settings ***
Documentation    Keywords referentes ao cadastro de novos usuários

Resource         ../../config/package.robot

*** Keywords ***
Dado que o usuário esteja na tela de Cadastro do Victor Hugo
    Wait Until Element Is Visible       ${SIGNIN.username_input}
    Wait Until Element Is Visible       ${SIGNIN.username_password}
    Click Element    //*[contains(text(), 'Quero me cadastra')]

Quando inserir todas as informações de cadastro e clicar em cadastrar
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
    Click Element    ${SIGNUP.BTN_SUBMIT_SIGNUP}

Então deverá ser direcionado para a tela de edição do usuário
    Wait Until Element Is Visible    ${SIGNIN.submit_logout_btn}