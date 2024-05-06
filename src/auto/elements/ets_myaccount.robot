*** Settings ***
Documentation    Elementos referente a tela de login

*** Variables ***
&{MYACCOUNT}
...        BTN_MYINFORMATIONS=//*[contains(text(), 'Minhas informações')]
...        BTN_MYCARDS=//*[contains(text(), 'Meus cartões')]
...        BTN_MYADDRESS=//*[contains(text(), 'Meus endereços')]
...        BTN_MYORDERS=//*[contains(text(), 'Últimos pedidos')]

&{MY_INFORMATIONS}
...        INPUT_NAME=id=name
...        INPUT_BIRTHDAY=birthdate
...        INPUT_PHONE=phone
...        BTN_DESACTIVE_ACCOUNT=//*[@data-testid='sign-up-delete-button']
...        BTN_CHANGE_PASSWORD0=//*[@data-testid='sign-up-change-password-button']
...        BTN_SAVE=//*[@data-testid='sign-up-save-changes-button']