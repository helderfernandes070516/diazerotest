*** Settings ***
Documentation    Arquivo de Setup And Teardown

Resource         package.robot

*** Keywords ***
Open Session
    Open Browser               about:blank                        ${CONFIG.BROWSER.NAME}
    Go To                      ${CONFIG.BROWSER.URL}
    Set Selenium Timeout       ${CONFIG.BROWSER.IMPLICITY_WAIT}
    Maximize Browser Window

Close Session
    Capture Page Screenshot
    Close Browser