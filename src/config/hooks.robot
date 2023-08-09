*** Settings ***

Resource    ../../src/main.resource

*** Keywords ***
Abrir navegador
    Open Browser    about:blank    headlesschrome
    Set Browser Implicit Wait    30s
    Maximize Browser Window

Fechar navegador
    Close Browser

Tira Print
    Capture Page Screenshot