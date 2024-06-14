*** Settings ***
Resource    ../base.robot
Library     ../lib/Casas_Bahia.py

*** Keywords ***
load page object
    ${HOME_PAGE}=    get_page_attributes    homepage

    Set Suite Variable    ${HOME_PAGE}

Start browser
    Open Browser    ${BASE_URL}    ${BROWSER}

that I see the logo of blogdoagi website
    Wait Until Element Is Visible    ${HOME_PAGE.img_logo}    ${GENERAL_TIMEOUT}
    Page Should Contain Element      ${HOME_PAGE.img_logo} 

I go to the search area
    Click Button    ${HOME_PAGE.btn_search}

press enter
    Press Key    none    RETURN