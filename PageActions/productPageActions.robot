*** Settings ***

Library      AppiumLibrary
Library      BuiltIn
Resource     ../PageObjects/productPageObjects.robot
Resource     ../BaseLibrary/baseTest.robot

*** Keywords ***

Click Add To Cart Button
    Wait And Click              ${ADD_TO_CART_BTN}

Check Add To Cart Message
    [Arguments]  ${msg}
    Element Text Should Be      ${ADD_TO_CART_MSG}   ${msg}  timeout=30

Click Go To Basket Button
    Wait And Click              ${GO_TO_BASKET_BTN}