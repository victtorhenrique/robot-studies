*** Settings ***
Documentation    Este é o gerenciador de dependências da nossmação

Library     SeleniumLibrary
Library     DebugLibrary

### keywords ###

Resource    ./keywords/kws_login.resource
Resource    ./keywords/kws_estudo2.resource
Resource    ./keywords/kws_estudo3.resource

### Variaveis ###

Resource    ./pages/login_page.resource
Resource    ./pages/estudo3_page.resource

### hooks ###
Resource    ./config/hooks.resource