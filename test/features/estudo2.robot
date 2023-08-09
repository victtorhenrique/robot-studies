language:pt-br
*** Settings ***
Documentation    Este caso arquivo contem os BDD dos casos de teste de login

Resource    ../../src/main.resource

Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cenario 1: Click botao esquerdo
    Acessar pagina inicial the internet
    Fazer click com botao direito caixa preta