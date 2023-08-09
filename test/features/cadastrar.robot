language: pt-br
*** Settings ***
Documentation    Este caso arquivo contem os BDD dos casos de teste de login

Resource    ../../src/main.resource

Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cenario 1: Cadastro Usuario
    [Tags]    tc1
    Dado Acessar a pagina inicial de cadastro
    Quando Realizar cadastro do usuario "fulano 4" email "fulano4@qa.com" e senha "teste"
    Então Validar mensagem de sucesso "Cadastro realizado com sucesso"