*** Settings ***
Resource    ../or/permission-controller.robot
Resource    ../or/older-version-popup.robot

*** Variables ***

${wait}                     60s

#*** Device Variables ***
${appium-port-device1}      4724
${appium-port-device2}      4723
${app-package}              chat21.android.demo
${app-activity}             chat21.android.demo.SplashActivity

*** Keywords ***
Open Chat 21 Application
    [Arguments]     ${port}=${appium-port-device1}
    Open Application    http://localhost:${port}/wd/hub    platformName=Android 	appPackage=${app-package}	appActivity=${app-activity}  automationName=Uiautomator2
    check and allow permission for Andoid 10
    check and click on ok to close older version popup

Close Chat 21 Application
    Close Application