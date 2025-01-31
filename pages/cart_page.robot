*** Settings ***
Resource    ../resources/libraries.resource

*** Variables ***
${DELETE_PDT1}       xpath=//*[@id="product-33"]/td[6]/a
${DELETE_PDT2}       xpath=//*[@id="product-35"]/td[6]/a
${DELETE_PDT3}       xpath=//*[@id="product-37"]/td[6]/a
${EMPTY_CART_MSG}    Cart is empty! Click here to buy products.

*** Keywords ***
Verify Cart Is Not Empty
    [Documentation]  Checks if the cart contains products ( at least one row (<tr>) is inside the cart table.)
    Element Should Be Visible    xpath=//*[@id="cart_info"]//tr

Process To Checkout
    [Documentation]  Clicks on the "Proceed to checkout" button to go to the checkout page
    Click Element    xpath=//*[@id="do_action"]/div[1]/div/div/a

Go To Login Page From Cart
    [Documentation]  Clicks on the "Login" button to go to the login page from the cart
    Click Element    xpath=//*[@id="checkoutModal"]/div/div/div[2]/p[2]/a

Delete All Products
    [Documentation]  Deletes all products from the shopping cart
    Click Element    ${DELETE_PDT1}
    Click Element    ${DELETE_PDT2}
    Click Element    ${DELETE_PDT3}

Verify Cart Is Empty
    [Documentation]  Verifies that the cart is empty by checking for the empty cart message
    Wait Until Page Contains    ${EMPTY_CART_MSG}
