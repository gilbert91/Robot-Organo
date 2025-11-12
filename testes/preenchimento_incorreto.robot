*** Settings ***
Resource    ../resources/main.robot
Test Setup    Dado que eu acesse o organo
Test Teardown  Fechar o navegador

*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***
Verificar se quando um campo obrigatorio não é preechido corretamente o sistema exibe uma mensagem de campo obrigatorio
    Dado que eu clique no botão criar card
    Então sistema deve apresentar mensagem de campo obrigatorio
*** Keywords ***
Dado que eu clique no botão criar card
  Click Element    ${BOTAO_CARD}  

Então sistema deve apresentar mensagem de campo obrigatorio
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro
