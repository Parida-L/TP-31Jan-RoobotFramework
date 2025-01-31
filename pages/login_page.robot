*** Settings ***
Resource    ../resources/libraries.resource

*** Variables ***
${SIGNUP_NAME_INPUT}        xpath=//*[@id="form"]/div/div/div[3]/div/form/input[2]
${SIGNUP_EMAIL_INPUT}       xpath=//div[@class='signup-form']//input[@name='email']
${SIGNUP_BTN}               xpath=//*[@id="form"]/div/div/div[3]/div/form/button
${LOGIN_EMAIL_INPUT}        xpath=//*[@id="form"]/div/div/div[1]/div/form/input[2]
${LOGIN_PASSWORD_INPUT}     xpath=//*[@id="form"]/div/div/div[1]/div/form/input[3]
${LOGIN_BTN}                xpath=//*[@id="form"]/div/div/div[1]/div/form/button

*** Keywords ***
Log In
    [Documentation]  Logs in using the provided email and password
    [Arguments]    ${email}    ${password}
    Input Text    ${LOGIN_EMAIL_INPUT}    ${email}
    Input Text    ${LOGIN_PASSWORD_INPUT}    ${password}
    Click Button    ${LOGIN_BTN}
