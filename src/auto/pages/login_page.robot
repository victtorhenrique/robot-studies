*** Settings ***
Documentation    Aqui estão os objetos mapeados em variáveis da homepage do site

*** Variables ***
${CAMPO_NOME}      id=nome
${CAMPPO_EMAIL}    id=email
${CAMPO_SENHA}     id=password
${BOTAO_CADASTRAR_SE}    xpath=//a[@class="btn btn-link"]
${BOTAO_CADASTRAR}    xpath=//button[@class="btn btn-primary btn btn-primary"]
${ALERTA_CADASTRO}    xpath=//div[@class='alert alert-dismissible alert-primary']