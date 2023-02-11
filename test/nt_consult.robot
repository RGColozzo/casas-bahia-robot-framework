*** Settings ***
Resource    ../base.robot
Resource    ../common/bdd.robot
Resource    ../common/common_keywords.robot
Resource    ../keywords/valid_search.keywords.robot
Resource    ../keywords/invalid_search_keywords.robot

Suite Setup    load page object

Test Setup     start browser
Test Teardown    Close Browser

*** Test Case ***
TC001 - Search for something that exists in the blog
    Given    that I see the logo of blogdoagi website
    When     I go to the search area
    And      I try to search for something that exists in the blog
    Then     page should contains the message "Resultado da busca por: cartão benefícios"
    
TC002 - Search for something that does not exists in the blog
    Given    that I see the logo of blogdoagi website
    When     I go to the search area
    And      I try to search for something that dont exists in the blog
    Then     page should contains the message "Nenhum resultado"