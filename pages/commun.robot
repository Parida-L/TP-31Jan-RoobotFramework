*** Settings ***
Resource    ../resources/libraries.resource

*** Variables ***
${CART_BUTTON}       xpath=//*[@id="header"]/div/div/div/div[2]/div/ul/li[3]/a

*** Keywords ***
Scroll Down
    [Documentation]  Scrolls down the page by the specified number of pixels
    [Arguments]    ${pixels}
    Execute JavaScript    window.scrollBy(0, ${pixels})

Scroll To Element
    [Documentation]  Scrolls to the specified element
    [Arguments]    ${locator}
    ${element} =    Get WebElement    ${locator}
    Execute JavaScript    arguments[0].scrollIntoView(true);    ARGUMENTS    ${element}

Go To Cart
    [Documentation]  Clicks on the "Cart" button to go to the cart page
    Click Element    ${CART_BUTTON}
