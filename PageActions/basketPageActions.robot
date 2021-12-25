*** Settings ***

Library      AppiumLibrary
Library      BuiltIn
Resource     ../PageObjects/basketPageObjects.robot

*** Keywords ***

Check Basket Page Is Open
    Wait Until Element Is Visible       ${BASKET_PAGE}      timeout=30s