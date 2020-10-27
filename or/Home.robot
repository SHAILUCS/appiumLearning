*** Settings ***
Documentation   Home Page
Library         AppiumLibrary
Resource        ChatList.robot

*** Variables ***
${view-home}            xpath = //android.widget.TextView[@text='HOME']
${view-chat}            xpath = //android.widget.TextView[@text='CHAT']
${view-profile}         xpath = //android.widget.TextView[@text='PROFILE']

*** Keywords ***
Open Chat Tab
    tap     ${view-chat}
    wait until element is visible       ${chat-image-profile}