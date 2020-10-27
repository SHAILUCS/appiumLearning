*** Settings ***
Library  AppiumLibrary
Resource    Common.robot

# PAGE OBJECTS
*** Variables ***
${text-email}   id = chat21.android.demo:id/email
${text-pwd}   id = chat21.android.demo:id/password
${button-login}   xpath = //android.widget.Button[@text='Login']
${link-no-account}  xpath = //android.widget.TextView[@text='No account?']
${link-sign-up}     xpath = //android.widget.Button[@text='SIGN UP']

*** Keywords ***
Perform Login
    [Arguments]  ${email}   ${pwd}
    [Documentation]  This function will perform the login to Chat21 Application
    input text  ${text-email}   ${email}
    input text  ${text-pwd}   ${pwd}
    click element   ${button-login}
    wait for loader to get removed
    sleep   15s
    wait until page contains    HOME
    click on NOT NOW on Google Save Password

