*** Settings ***
Resource    ../base.robot
Resource    ../common/gherkin_keywords.robot
Resource    ../common/common_keywords.robot
Resource    ../keywords/valid_search.keywords.robot
Resource    ../keywords/invalid_search_keywords.robot

Suite Setup    load page object

Test Setup     start browser
Test Teardown    Close Browser

*** Test Cases ***
TC002 - P - Product search by keyword
    [Tags]  @casasbahia  @positive
    
    Given   that the user is on the homepage of Ponto Frio
    When    they type "smartphone" in the search bar and press Enter
    Then    they should see a list of products related to smartphones
    
TC002 - Search for something that does not exists in the blog
    [Tags]    @casasbahia

    Given    that I see the logo of blogdoagi website
    When     I go to the search area
    And      I try to search for something that dont exists in the blog
    Then     page should contains the message "Nenhum resultado"