language:pt-br
*** Settings ***
Documentation    Este caso arquivo contem os BDD dos casos de teste de login

Resource    ../../src/main.resource


Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cenario 1: Preencher texto iframe
    Acessar pagina inicial the internal
    Validar carregamento pagina
    Escrever o texto "Robot Framework com Iframes."
