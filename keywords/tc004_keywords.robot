*** Settings ***
Resource    ../base.robot
Resource    ../common/common_keywords.robot
Resource    ../keywords/tc002_keywords.robot
Library     ../lib/Casas_Bahia.py

*** Keywords *** 
that the user is on the product details page
    that the user is on the homepage of Ponto Frio
    they type "smartphone" in the search bar and press Enter
    Wait Until Element Is Visible     ${SMARTPHONE_PAGE.img_smartphone}
    Click Element                     ${SMARTPHONE_PAGE.img_smartphone}

they click on the 'Buy' button
    Wait Until Element Is Visible     ${SMARTPHONE_PAGE.btn_buy}
    Click Button                      ${SMARTPHONE_PAGE.btn_buy}
    Wait Until Element Is Visible     ${SMARTPHONE_PAGE.btn_not_now}
    Click Button                      ${SMARTPHONE_PAGE.btn_not_now}

the product should be added to the shopping cart
    Page Should Contain     Meu carrinho
    Page Should Contain     Continuar a compra
