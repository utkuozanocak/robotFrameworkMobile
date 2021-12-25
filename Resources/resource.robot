*** Settings ***
Library  AppiumLibrary
Library  BuiltIn
Library  Collections
Library  Process

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_APP}                ${CURDIR}/../App/hepsiburada.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=12}
${ANDROID_APP_PACKAGE}        com.pozitron.hepsiburada


*** Keywords ***

Open App
  [Arguments]    ${appActivity}=com.hepsiburada.ui.startup.SplashActivity
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  app=${ANDROID_APP}  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  appPackage=${ANDROID_APP_PACKAGE}  appActivity=${appActivity}
  Close Advertisement Frame

Close App
  Close Application

Close Advertisement Frame
  Sleep  20s
  ${IsElementVisible}=  Run Keyword And Return Status    Element Should Be Visible   ${FRAME_CLOSE_BTN}
  Run Keyword If    ${IsElementVisible}    Click Element     ${FRAME_CLOSE_BTN}

Wait And Click
  [Arguments]    ${selector}
  Wait Until Element Is Visible   ${selector}    timeout=30
  Click Element    ${selector}