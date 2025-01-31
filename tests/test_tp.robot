*** Settings ***
Documentation     Test searching for products, adding to cart, logging in, and verifying cart persistence
Resource         ../resources/browser_setup.robot
Resource         ../pages/home_page.robot
Resource         ../pages/products_page.robot
Resource         ../pages/cart_page.robot
Resource         ../pages/login_page.robot
Resource         ../resources/variables.resource

*** Test Cases ***
Scenario: Add products, login and empty cart
    [Documentation]  Test searching for products, adding to cart, logging in, and verifying cart persistence
    Given I Add Products To The Cart After A Search
    And I Log Into My Account
    When I Delete All The Products Added From The Cart
    Then The Cart Is Empty

*** Keywords ***
I Add Products To The Cart After A Search
    [Documentation]  Adds products to the cart after searching for them
    Open Browser And Navigate
    Accept Cookies
    Go To Products Page
    Search And Add Products To Cart    ${PRODUCT_NAME}
    Go To View Cart
    Verify Cart Is Not Empty
    Process To Checkout
    Go To Login Page From Cart

I Log Into My Account
    [Documentation]  Logs into the Automation Exercise website
    Log In    ${EMAIL}    ${PASSWORD}
    Verify I Am Logged In
    Go To Cart
    Verify Cart Is Not Empty

I Delete All The Products Added From The Cart
     [Documentation]  Deletes all products from the cart
     Delete All Products

The Cart Is Empty
     [Documentation]  Verifies that the cart is empty
     Verify Cart Is Empty
     Close Page
