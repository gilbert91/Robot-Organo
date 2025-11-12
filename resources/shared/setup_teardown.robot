*** Settings ***
Resource    ../main.robot

*** Variables ***
${URL}                    http://localhost:3001/

*** Keywords ***
Dado que eu acesse o organo
    Open Browser    ${URL}     browser=Chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser