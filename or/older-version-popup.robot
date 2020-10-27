*** Settings ***
Documentation    Older version popup displayed on Android 10 Device
Library     AppiumLibrary
Library     BuiltIn

*** Variables ***
${button-ok}    id = android:id/button1

*** Keywords ***
check and click on ok to close older version popup
    sleep       10s
    ${flag}     run keyword and return status   wait until element is visible   ${button-ok}
    run keyword if  ${flag}==True   _private_click on ok

_private_click on ok
    tap     ${button-ok}
    wait until page does not contain element    ${button-ok}