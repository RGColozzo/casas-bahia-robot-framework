*** Settings ***
Library    Selenium2Library

Documentation    Test for NT Consult Job

*** Variables ***
${BASE_URL}                   https://blogdoagi.com.br
${BROWSER}                    chrome
${VALID_TEXT_FOR_SEARCH}      cartão benefícios
${INVALID_TEXT_FOR_SEARCH}    chamberlau
${GENERAL_TIMEOUT}            30s