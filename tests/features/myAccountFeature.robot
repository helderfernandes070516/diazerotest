*** Settings ***
Documentation    Como usuário quero acessar o site do Victor Hugo e ao inserir minhas credenciais
...              quero que seja possível realizar um login com sucesso

Resource          ../../src/config/package.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Cenário: Validando edição das informações do usuário
    [Tags]       MYACCOUNT-1
    Dado que o usuário tenha realizado login com sucesso
    E acessar a sessão de "Minhas informações"
    Quando realizar a edição dos campos e clicar em Salvar dados
    Então a edição deve ser realizada com sucesso
