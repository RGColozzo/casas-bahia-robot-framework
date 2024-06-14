*** Settings ***
Resource    ../base.robot
Resource    ../common/gherkin_keywords.robot
Resource    ../common/common_keywords.robot
Resource    ../keywords/tc002_keywords.robot
Resource    ../keywords/tc016_keywords.robot

Suite Setup    load page object

Test Setup     start browser
Test Teardown    Close Browser

*** Test Cases ***
TC.002 - P - Product search by keyword
    [Tags]  @casasbahia  @positive
    
    Given   that the user is on the homepage of Ponto Frio
    When    they type "smartphone" in the search bar and press Enter
    Then    they should see a list of products related to smartphones

TC.016 - N - Search for non-existent product
    [Tags]  @casasbahia  @negative
    
    Given   that the user is on the homepage of Ponto Frio
    When    they type an invalid keyword in the search bar and press Enter
    Then    they should see a message indicating that no products were found based on their search