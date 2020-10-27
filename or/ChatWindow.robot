*** Settings ***
Library     AppiumLibrary
Library     BuiltIn

*** Variable ***
${text-message}     id = chat21.android.demo:id/main_activity_chat_bottom_message_edittext
${icon-send}        id = chat21.android.demo:id/main_activity_send

*** Keywords ***
Fill passed message and send
    [Arguments]     ${msg}
    input text      ${text-message}      ${msg}
    wait until element is visible   ${icon-send}
    tap             ${icon-send}
    verify msg recieved     ${msg}

verify msg recieved
    [Arguments]     ${msg}
    wait until page contains element    xpath = //android.widget.TextView[contains(@text,'${msg}')]     ${wait}
