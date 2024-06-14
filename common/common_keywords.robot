*** Settings ***
Resource    ../base.robot
Library     ../lib/Casas_Bahia.py

*** Keywords ***
load page object
    ${HOME_PAGE}=           get_page_attributes    homepage
    ${NOT_FOUND_PAGE}=      get_page_attributes    notfoundpage
    ${SEARCH_PAGE}=         get_page_attributes    searchpage

    Set Suite Variable    ${HOME_PAGE}
    Set Suite Variable    ${NOT_FOUND_PAGE}
    Set Suite Variable    ${SEARCH_PAGE}

start browser
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

that the user is on the homepage of Ponto Frio
    Delete All Cookies
    Page Should Contain Element     ${HOME_PAGE.img_logo}