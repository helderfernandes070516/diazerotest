*** Settings ***
Documentation    Elementos referente a pagina Home do site do banco Bari.

*** Variables ***
&{SIGNUP}
...         INPUT_NAME=name
...         INPUT_DOCUMENT=document
...         INPUT_BIRTHDAY=birthdate
...         INPUT_PHONE=phone
...         INPUT_EMAIL=email
...         INPUT_PASSWORD=password
...         INPUT_PASSWORD_VERIFY=passwordVerify
...         BTN_SUBMIT_SIGNUP=//*[contains(text(), 'Cadastrar')]

