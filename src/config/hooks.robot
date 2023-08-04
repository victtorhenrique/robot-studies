*** Settings ***

Resource    ../../src/config/package.robot

*** Keywords ***
Abrir navegador
    Open Browser    about:blank    chrome
    Maximize Browser Window

Fechar navegador
    Close Browser


Tira Print
    Sleep    1s
    Capture Page Screenshot