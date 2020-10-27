*** Settings ***
Documentation    Suite description
Library     AppiumLibrary
Library     BuiltIn
Resource    ../or/ChatWindow.robot

*** Variables ***
${chat-image-profile}   id = chat21.android.demo:id/recipient_picture


*** Keywords ***
Open the chat window
    tap                             ${chat-image-profile}
    wait until element is visible   ${text-message}
