*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn



*** Test Cases ***
Open Browser and Close Browser
    [Documentation]  Open Browser and Close Browser Test
    [Tags]  Functional Test
    Open Browser    https://www.google.co.in    chrome  executable_path=driver/chromedriver.exe
    sleep   5s
    Close Browser

