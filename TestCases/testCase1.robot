*** Settings ***
Library         AppiumLibrary
Resource   ../PageActions/homePageActions.robot
Resource   ../Resources/resource.robot
Resource   ../PageActions/filterPageActions.robot
Resource   ../PageActions/productPageActions.robot
Resource   ../PageActions/basketPageActions.robot

Test Setup     Open App
Test Teardown  Close App


*** Test Cases ***
Test Case 1
    Search Product              bluetooth kulaklık
    Click Filter Button

    Select Filter               Marka
    Input Filter Text           JBL
    Select Filter Result        JBL
    Click Apply Button

    Select Filter               Renk
    Select Filter Result        Siyah
    Click Apply Button

    Select Filter               Fiyat Aralığı
    Select Filter Result        500 - 750 TL
    Click Apply Button

    Selected Filters Check      Marka          JBL
    Selected Filters Check      Renk           Siyah
    Selected Filters Check      Fiyat Aralığı      500 - 750 TL

    Click Show Product Button

    Select Product From Result List
    Click Add To Cart Button
    Check Add To Cart Message  Ürün sepetinizde
    Click Go To Basket Button

    Check Basket Page Is Open