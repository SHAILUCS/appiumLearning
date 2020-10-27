*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn

*** Variables ***
${SEARCH-FIELD1}         name=q
${SEARCH-FIELD2}         name:q


*** Test Cases ***
Page object demo on Web based application
    [Documentation]  Open Browser and Close Browser Test
    [Tags]  Functional Test
    Open Browser    https://www.google.co.in    chrome  executable_path=driver/chromedriver.exe
    Input Text    ${SEARCH-FIELD1}     Facebook
    Input Text    ${SEARCH-FIELD2}     Twitter
    sleep   5s
    Close Browser
