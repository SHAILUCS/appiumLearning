*** Settings ***
Library     AppiumLibrary
Library     BuiltIn

*** Variables ***
${loader}   id = android:id/progress
${not-now}  id = android:id/autofill_save_no

*** Keywords ***
wait for loader to get removed
    wait until element is visible   ${loader}

click on NOT NOW on Google Save Password
    ${present}=    run keyword and return status   element should be visible   ${not-now}
    run keyword if  ${present}==True    _private_close popup and verify

_private_close popup and verify
    click element   ${not-now}
    wait until element is visible   ${not-now}