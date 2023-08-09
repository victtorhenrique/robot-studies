*** Settings ***

Resource    ../../src/config/package.robot

*** Keywords ***
Abrir navegador
    Open Browser    about:blank    chrome
    Set Browser Implicit Wait    30s
    Maximize Browser Window

Fechar navegador
    Close Browser

Tira Print
    Capture Page Screenshot