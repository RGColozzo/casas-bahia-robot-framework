*** Settings ***
Resource    ../base.robot
Resource    ../common/common_keywords.robot
Library     ../lib/Casas_Bahia.py

*** Keywords ***

that the user is on the homepage of Ponto Frio
    Delete All Cookies
    Page Should Contain Element     ${HOME_PAGE.img_logo}

they type "smartphone" in the search bar and press Enter
    Page Should Contain Element    ${HOME_PAGE.input_search}
    Input Text                     ${HOME_PAGE.input_search}   smartphone
    Click Button                   ${HOME_PAGE.btn_search}

they should see a list of products related to smartphones
    Wait Until Page Contains    Você buscou por
    Page Should Contain         Você buscou por
    Page Should Contain         smartphone     
    Page Should Contain         produtos encontrados
