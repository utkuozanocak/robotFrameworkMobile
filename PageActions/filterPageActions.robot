*** Settings ***

Library      AppiumLibrary
Library      BuiltIn

Resource     ../PageObjects/filterPageObjects.robot
Resource     ../Resources/resource.robot

*** Keywords ***

Select Filter
    [Arguments]  ${filterName}
    Wait Until Page Contains        ${FILTER_PAGE_TITLE}              timeout=30
    Wait Until Page Contains        ${SHOW_PRODUCT_BTN}               timeout=30
    Wait And Click               //android.widget.TextView[@text='${filterName}']

Input Filter Text
    [Arguments]  ${filterText}
    Wait Until Element Is Visible     ${SEARCH_TXT}     timeout=30
    Wait And Click                    ${SEARCH_TXT}
    Input Text                        ${SEARCH_TXT}      ${filterText}

Select Filter Result
    [Arguments]  ${filterResultText}
    Wait Until Page Contains    ${APPLY_BTN}      timeout=30
    Wait And Click              //android.widget.TextView[@text='${filterResultText}']

Click Apply Button
    Wait And Click              ${APPLY_BTN}

Selected Filters Check
    [Arguments]  ${filterName}  ${filterText}
    Wait Until Page Contains    ${SHOW_PRODUCT_BTN}     timeout=30
    Element Should Be Visible    //android.widget.TextView[@text='${filterName}']     timeout=30
    Element Should Be Visible    //android.widget.TextView[@text='${filterText}']     timeout=30

Click Show Product Button
    Wait And Click              ${SHOW_PRODUCT_BTN}