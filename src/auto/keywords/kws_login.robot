*** Settings ***
Documentation    Aqui estão as keywords relevantes para a automação de login

Resource    ../../config/package.robot

*** Keywords ***
Acessar a pagina inicial de cadastro
    Go To    https://front.serverest.dev/
    Wait Until Page Contains Element    ${CAMPPO_EMAIL}
    Page Should Contain Element    ${CAMPPO_EMAIL}

Realizar cadastro do usuario "${usuario}" email "${email}" e senha "${senha}"
    Click Element    ${BOTAO_CADASTRAR_SE}
    Wait Until Page Contains    Cadastrar como administrador?
    Input Text    ${CAMPO_NOME}    ${usuario}
    Input Text    ${CAMPPO_EMAIL}   ${email}
    Input Text    ${CAMPO_SENHA}    ${senha}
    Click Element    ${BOTAO_CADASTRAR}

Validar mensagem de sucesso "${mensagem}"
    Wait Until Element Contains    ${ALERTA_CADASTRO}    ${mensagem}
    Element Should Contain    ${ALERTA_CADASTRO}    Cadastro realizado com sucesso
    Wait Until Page Contains    Home
    Page Should Contain    Serverest Store
    Tira Print