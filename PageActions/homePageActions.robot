*** Settings ***

Library      AppiumLibrary
Library      BuiltIn
Resource    ../PageObjects/homePageObjects.robot
Resource    ../BaseLibrary/baseTest.robot

*** Keywords ***

Click Account Button
    Wait And Click              ${ACCOUNT_BTN}

Search Product
    [Arguments]  ${product}
    Wait And Click              ${SEARCH_BOX_BTN}
    Input Text                  ${SEARCH_BOX_TXT}    ${product}
    Wait And Click              ${SEARCH_RESULT_LABEL}

Click Filter Button
    Wait And Click              ${FILTER_BTN}

Search Brand
    Click Filter Button

Select Product From Result List
    Wait Until Page Contains    ${FILTER_BTN}     timeout=30
    Wait And Click	            ${PRODUCT_RESULT_LST}
