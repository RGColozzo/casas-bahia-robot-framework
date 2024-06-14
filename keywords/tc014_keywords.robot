*** Settings ***
Resource    ../base.robot
Resource    ../common/common_keywords.robot
Library     ../lib/Casas_Bahia.py

*** Keywords ***
that the user is on the search results page
    that the user is on the homepage of Ponto Frio
    Page Should Contain Element    ${HOME_PAGE.input_search}
    Input Text                     ${HOME_PAGE.input_search}   headset
    Click Button                   ${HOME_PAGE.btn_search}

they apply filters, such as brand, price range, etc.
    Click Button    ${SEARCH_PAGE.btn_filter}
    Delete All Cookies

the search results should be refined according to the applied filters
    Wait Until Page Contains Element    ${SEARCH_PAGE.img_headset}      ${GENERAL_TIMEOUT}
    Page Should Contain Element        ${SEARCH_PAGE.img_headset}