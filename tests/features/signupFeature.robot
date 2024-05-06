*** Settings ***
Documentation    Como usuário quero acessar o site do Victor Hugo e ao me cadastrar
...              quero que seja possível realizar um login com sucesso

Resource          ../../src/config/package.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Cenário: Validando cadastro com sucesso
    [Tags]       SIGNUP-1
    Dado que o usuário esteja na tela de Cadastro do Victor Hugo
    Quando inserir todas as informações de cadastro e clicar em cadastrar
    Então deverá ser direcionado para a tela de edição do usuário
