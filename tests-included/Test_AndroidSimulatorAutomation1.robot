*** Settings ***
Library  AppiumLibrary
Library  BuiltIn
Resource  ../res/android-res.robot
Resource  ../res/credentials-res.robot
Resource  ../res/chat-res.robot
Resource  ../or/login.robot
Resource  ../or/Home.robot
Resource  ../or/ChatList.robot
Resource  ../or/ChatWindow.robot

*** Test Cases ***
Open Chat 21 Application Perform Login On Android 10 Device
    [Documentation]  Chat 21 Application Test
    [tags]  Functional Test
    Open Chat 21 Application    ${appium-port-device1}
    Perform Login   ${cred1}[email]    ${cred1}[pwd]
    Open Chat Tab
    open the chat window

    ${chat-Android9}=       Get List Android 9
    ${chat-Android10}=      Get List Android 10

    ${len}      GET LENGTH    ${chat-Android9}

    set local variable      ${index}    -1

    FOR     ${temp}     IN     @{chat-Android9}
        ${index}    evaluate    ${index}+1
        Fill passed message and send    ${chat-Android10}[${index}]
        verify msg recieved             ${chat-Android9}[${index}]
    END
    #Sleep   15s