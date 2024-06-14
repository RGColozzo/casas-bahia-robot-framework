*** Settings ***
Resource    ../base.robot
Library     ../lib/Casas_Bahia.py

*** Keywords ***
load page object
    ${HOME_PAGE}=      get_page_attributes    homepage

    Set Suite Variable    ${HOME_PAGE}

start browser
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window