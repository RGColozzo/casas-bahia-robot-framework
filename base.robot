*** Settings ***
Library    Selenium2Library

Documentation    Test for Casas Bahia

*** Variables ***
${BASE_URL}                   https://pontofrio.com.br
${BROWSER}                    chrome
${VALID_TEXT_FOR_SEARCH}      smartphone
${INVALID_TEXT_FOR_SEARCH}    just testing
${GENERAL_TIMEOUT}            30s