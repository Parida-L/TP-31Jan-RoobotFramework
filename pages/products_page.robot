*** Settings ***
Resource    ../resources/libraries.resource
Resource    commun.robot

*** Variables ***
${SEARCH_INPUT}      xpath=//input[@id='search_product']
${SEARCH_BUTTON}     xpath=//button[@id='submit_search']
${ADD_TO_CART}       xpath=//div[@class='features_items']/div[2]//div[@class='product-overlay']//a[.='Add to cart']
${PRODUCT_CARD}      xpath=/html/body/section[2]/div/div/div[2]/div/div[2]/div/div[1]/div[1]/img
${VIEW_CART}         xpath=//*[@id="cartModal"]/div/div/div[2]/p[2]/a

*** Keywords ***
Search And Add Products To Cart
    [Documentation]  Searches for a product and adds the first result to the cart
    [Arguments]    ${product_name}
    Input Text    ${SEARCH_INPUT}    ${product_name}
    Click Element    ${SEARCH_BUTTON}
    Wait Until Page Contains    Searched Products
    Scroll Down    500
    Mouse Over    ${PRODUCT_CARD}
    Sleep    2s
    Click Element    ${ADD_TO_CART}
    Sleep    2s

Go To View Cart 
    [Documentation]  Clicks on the "View Cart" button to go to the cart page
    Wait Until Page Contains Element    ${VIEW_CART}
    Click Element    ${VIEW_CART}
    Wait Until Page Contains    Shopping Cart
