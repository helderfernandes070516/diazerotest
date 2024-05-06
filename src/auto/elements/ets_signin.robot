*** Settings ***
Documentation    Elementos referente a tela de login

*** Variables ***
&{SIGNIN}
...    username_input=//*[@data-testid="sign-in-username-input"]
...    username_password=//*[@data-testid="sign-in-password-input"]
...    submit_login_btn=//*[@id="headlessui-tabs-panel-3"]/div/section[2]/form/button
...    submit_logout_btn=//*[@id="__next"]/div/div/div/div[1]/div[2]/div[1]/button