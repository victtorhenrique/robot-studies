*** Settings ***
Documentation    Aqui estão as keywords relevantes para a automação de login

Resource    ../../src/main.resource


*** Keywords ***
Acessar pagina inicial the internet
    Go To    https://the-internet.herokuapp.com/context_menu
    Wait Until Page Contains Element    id=hot-spot
    
Fazer click com botao direito caixa preta
    Open Context Menu    xpath=//*[@id="hot-spot"]
    Alert Should Be Present    text=You selected a context menu    timeout=30s
    Tira Print