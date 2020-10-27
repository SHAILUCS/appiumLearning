*** Settings ***
Library  AppiumLibrary
Library  BuiltIn

*** Test Cases ***
Open Chat 21 Application and close it
    [Documentation]  Open Chat 21 Application and close it Test
    [tags]  Functional Test
    Open Application    http://localhost:4723/wd/hub    platformName=Android	deviceName=67692be2	appPackage=chat21.android.demo	appActivity=chat21.android.demo.SplashActivity
    Sleep   15s
    Close Application
