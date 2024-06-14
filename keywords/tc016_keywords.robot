*** Settings ***
Resource    ../base.robot
Resource    ../common/common_keywords.robot
Library     ../lib/Casas_Bahia.py

*** Keywords ***
they type an invalid keyword in the search bar and press Enter
    Page Should Contain Element    ${HOME_PAGE.input_search}
    Input Text                     ${HOME_PAGE.input_search}   biruleibe
    Click Button                   ${HOME_PAGE.btn_search}

they should see a message indicating that no products were found based on their search
    Wait Until Page Contains Element    ${NOT_FOUND_PAGE.img_notfound}
    Page Should Contain Element         ${NOT_FOUND_PAGE.img_notfound}
    Page Should Contain                 Desculpe, não encontramos essa página