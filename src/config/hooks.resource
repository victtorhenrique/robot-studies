*** Settings ***

Resource    ../../src/main.resource

*** Keywords ***
Abrir navegador  
    IF    ${HEADLESS}
        Open Browser    about:blank    chrome        
    ELSE
        Open Browser    about:blank    headlesschrome   
    END    
    Set Browser Implicit Wait    30s
    Maximize Browser Window

Fechar navegador
    Close Browser

Tira Print
    Capture Page Screenshot