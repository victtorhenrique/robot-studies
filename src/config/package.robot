*** Settings ***
Documentation    Este é o gerenciador de dependências da nossa automação

Library     SeleniumLibrary
Library     DebugLibrary

### keywords ###

Resource    ../auto/keywords/kws_login.robot
Resource    ../auto/keywords/kws_estudo2.robot

### Variaveis ###

Resource    ../auto/pages/login_page.robot

### hooks ###
Resource    hooks.robot