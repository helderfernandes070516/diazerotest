*** Settings ***
Documentation    Como usuário quero acessar o site do Victor Hugo e ao inserir minhas credenciais
...              quero que seja possível realizar um login com sucesso

Resource          ../../src/config/package.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Cenário: Validando login com sucesso
    [Tags]       LOGIN-1
    Dado que o usuário esteja na tela de Login do Victor Hugo
    Quando inserir o login e senha cadastrados e clicar em Entrar
    Então deve ser direcionado para a tela de minha conta
    E a mensagem "Olá", "Helder Fernandes" deve ser apresentada

Cenário: Validando login com senha incorreta
    [Tags]       LOGIN-2
    Dado que o usuário esteja na tela de Login do Victor Hugo
    Quando inserir o login "helder.070516@gmail.com" e senha "1234567897" e clicar em Entrar
    Então deve ser apresentada a mensagem "E-mail ou senha inválidos"

Cenário: Validando login com e-mail incorreto
    [Tags]       LOGIN-3
    Dado que o usuário esteja na tela de Login do Victor Hugo
    Quando inserir o login "helder.070516errado@gmail.com" e senha "H3ld3r@2024" e clicar em Entrar
    Então deve ser apresentada a mensagem "E-mail ou senha inválidos"

