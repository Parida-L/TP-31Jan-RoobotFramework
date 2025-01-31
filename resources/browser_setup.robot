*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            http://automationexercise.com

*** Keywords ***
Open Browser And Navigate
    [Documentation]  Opens the browser and navigates to the Automation Exercise homepage
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains    Automation Exercise

Close Page
    [Documentation]  Closes the browser session after the test
    Close Browser
