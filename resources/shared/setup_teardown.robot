*** Settings ***
Resource    ../main.robot

*** Variables ***
${BROWSER}                          headlesschrome
${URL}                              http://localhost:3000

*** Keywords ***
Dado que eu acesse o organo
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    
    Open Browser    ${URL}    browser=Chrome    options=${options}
    Maximize Browser Window

Fechar o navegador
    Close Browser