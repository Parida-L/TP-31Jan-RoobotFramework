*** Settings ***
Resource    ../resources/libraries.resource
Resource    ../resources/browser_setup.robot

*** Variables ***
${COOKIES_OK_BTN}      xpath=/html/body/div/div[2]/div[2]/div[2]/div[2]/button[1]
${PRODUCTS_NAV_BTN}    xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a

*** Keywords ***
Accept Cookies
    [Documentation]  Accepts the cookies on the Automation Exercise website
    Click Element    ${COOKIES_OK_BTN}

Go To Products Page
    [Documentation]  Clicks on the "Produits" button and waits for the "TOUS LES PRODUITS" page to load
    Click Element    ${PRODUCTS_NAV_BTN}
    Wait Until Page Contains    text=All Products

Verify I Am Logged In
    [Documentation]  Verifies that the user is logged in by checking for the "Logout" button
    Wait Until Page Contains   text=Logged in as John J
