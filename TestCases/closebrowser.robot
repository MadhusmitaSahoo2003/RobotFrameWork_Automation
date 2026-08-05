*** Settings ***
Library   SeleniumLibrary

*** Variables ***

*** Test Cases ***
testclose browser
    Open Browser    https://demowebshop.tricentis.com/   chrome
    maximize browser window

    Open Browser    https://github.com/MadhusmitaSahoo2003/RobotFrameWork_Automation    chrome
    maximize browser window

    Close All Browsers
*** Keywords ***
