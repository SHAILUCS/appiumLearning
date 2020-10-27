*** Settings ***
Documentation    Suite description
Library     AppiumLibrary
Library     BuiltIn
Resource    ../res/chat-res.robot

*** Test Cases ***
Test title
    [Tags]    DEBUG
    ${chat-Android9}=     Get List Android 9
    ${chat-Android10}=     Get List Android 10

    ${len}      GET LENGTH    ${chat-Android9}

    set local variable      ${index}    -1

    FOR     ${temp}     IN     @{chat-Android9}
        ${index}    evaluate    ${index}+1
        log    ${chat-Android9}[${index}]
        log    ${chat-Android10}[${index}]
    END