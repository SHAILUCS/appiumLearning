*** Settings ***
Documentation    Contains the chat conversation between both devices
Library     BuiltIn
Library     DateTime

*** Variables ***
# ${timestamp}        null
# @{chat-Android9}
# @{chat-Android10}   Hi Android 10 ${timestamp}   Android 10 Second Message ${timestamp}


*** Keyword ***
Get List Android 9
   #${timestamp}=    Get Current Date    result_format=%Y-%m-%d
   set local variable   ${timestamp}    245
   [return]     Hi Android 9 ${timestamp}   Android 9 Second Message ${timestamp}

Get List Android 10
   #${timestamp}=    Get Current Date    result_format=%Y-%m-%d
   set local variable   ${timestamp}    245
   [return]     Hi Android 10 ${timestamp}   Android 10 Second Message ${timestamp}