*** Settings ***
Documentation    Este é o gerenciador de dependências da nossmação

Library     SeleniumLibrary
Library     DebugLibrary

### keywords ###

Resource    ./keywords/kws_login.robot
Resource    ./keywords/kws_estudo2.robot
Resource    ./keywords/kws_estudo3.robot

### Variaveis ###

Resource    ./pages/login_page.robot
Resource    ./pages/estudo3_page.robot

### hooks ###
Resource    ./config/hooks.robot