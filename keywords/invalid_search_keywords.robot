*** Settings ***
Resource    ../base.robot
Resource    ../common/common_keywords.robot
Library     ../lib/NT_Consult.py

*** Keywords ***
I try to search for something that dont exists in the blog
    Input Text   ${HOME_PAGE.txt_search_field}    ${INVALID_TEXT_FOR_SEARCH}
    press enter

page should contains the message "Nenhum resultado"
    Wait Until Element Is Visible    ${HOME_PAGE.txt_invalid_search}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.txt_invalid_search}