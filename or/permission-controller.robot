*** Settings ***
Documentation    Permission controller page object only displayed for Android 10 Device
Library     AppiumLibrary
Library     BuiltIn

*** Variables ***
${button-continue}      id = com.android.permissioncontroller:id/continue_button

*** Keywords ***
check and allow permission for Andoid 10
    ${flag}     run keyword and return status   wait until element is visible   ${button-continue}
    run keyword if  ${flag}==True       _private_click on allow button

_private_click on allow button
    tap     ${button-continue}
    wait until page does not contain element       ${button-continue}