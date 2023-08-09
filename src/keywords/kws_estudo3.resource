*** Settings ***
Documentation    Iframes in Robot Framework

Resource    ../../src/main.resource

*** Keywords ***
Acessar pagina inicial the internal
    Go To    https://the-internet.herokuapp.com/iframe

Validar carregamento pagina
    Wait Until Element Is Visible    ${PAGINA_THE_INTERNET}[campo_texto]

Escrever o texto "${texto}"
    Select Frame    ${PAGINA_THE_INTERNET.frame}
    Wait Until Page Contains    ${PAGINA_THE_INTERNET}[texto_do_campo_input]
    Current Frame Should Contain    ${PAGINA_THE_INTERNET}[texto_do_campo_input]
    Click Element    ${PAGINA_THE_INTERNET.id_campo_texto}
    Clear Element Text    ${PAGINA_THE_INTERNET.id_campo_texto}
    Input Text    ${PAGINA_THE_INTERNET.id_campo_texto}    ${texto}
    Element Text Should Be    ${PAGINA_THE_INTERNET.id_campo_texto}    ${texto}
    Tira Print
